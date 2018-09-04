MAKE=/usr/bin/make
CP=/usr/bin/cp

VERSION=1.0.0

SDL2_VERSION=2.0.8
SDL2_DIR=./SDL2-$(SDL2_VERSION)

SDL2_IMAGE_VERSION=2.0.3
SDL2_IMAGE_DIR=./SDL2_image-$(SDL2_IMAGE_VERSION)

SDL2_TTF_VERSION=2.0.14
SDL2_TTF_DIR=./SDL2_ttf-$(SDL2_TTF_VERSION)

.PHONY: all install clean libsdl2 libsdl2_image libsdl2_ttf libccaster


# Generic rules
all: libccaster
	@echo "Packing PDL2"
	@if ! [ -e ./build/PDL2-$(VERSION) ]; then\
		mkdir -p ./build/PDL2-$(VERSION);\
	fi
	@$(CP) -ru ./src/* ./build/PDL2-$(VERSION)
	@$(CP) -u ./libccaster/libccaster.a ./build/PDL2-$(VERSION)
	@echo "Done."
	@echo

dependencies: libsdl2 libsdl2_image libsdl2_ttf
	@echo "Installing SDL2"
	@cd $(SDL2_DIR)/build && sudo make install
	@echo
	@echo "Installing SDL2_image"
	@cd $(SDL2_IMAGE_DIR) && sudo make install
	@echo
	@echo "Installing SDL2_ttf"
	@cd $(SDL2_TTF_DIR) && sudo make install
	@echo

clean:
	@if [ -e $(SDL2_DIR) ]; then\
		echo "Removing $(SDL2_DIR)";\
		rm -rf $(SDL2_DIR);\
	fi
	@if [ -e $(SDL2_IMAGE_DIR) ]; then\
		echo "Removing $(SDL2_IMAGE_DIR)";\
		rm -rf $(SDL2_IMAGE_DIR);\
	fi
	@if [ -e $(SDL2_TTF_DIR) ]; then\
		echo "Removing $(SDL2_TTF_DIR)";\
		rm -rf $(SDL2_TTF_DIR);\
	fi
	@echo
	@echo "Cleaning libccaster"
	@cd ./libccaster && $(MAKE) fclean
	@echo
	@if [ -e ./build/PDL2-$(VERSION) ]; then\
		echo "Removing ./build/PDL2-$(VERSION)";\
		rm -rf ./build/PDL2-$(VERSION);\
	fi
	@echo



# Getting SDL2 sources
SDL2-$(SDL2_VERSION).tar.gz:
	@echo "Getting SDL2 version $(SDL2_VERSION)..."
	curl https://libsdl.org/release/SDL2-$(SDL2_VERSION).tar.gz -o $@
	@echo

SDL2_image-$(SDL2_IMAGE_VERSION).tar.gz:
	@echo "Getting SDL2_image version $(SDL2_IMAGE_VERSION)..."
	curl https://www.libsdl.org/projects/SDL_image/release/SDL2_image-$(SDL2_IMAGE_VERSION).tar.gz -o $@
	@echo

SDL2_image-$(SDL2_TTF_VERSION).tar.gz:
	@echo "Getting SDL2_ttf version $(SDL2_TTF_VERSION)..."
	curl https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-$(SDL2_TTF_VERSION).tar.gz -o $@
	@echo


# Decompressing SDL2 sources
$(SDL2_DIR): $(SDL2_DIR).tar.gz
	@echo "Decompressing..."
	tar -xf ./$^
	@echo "Removing archive"
	rm ./$^
	@echo

$(SDL2_IMAGE_DIR): $(SDL2_IMAGE_DIR).tar.gz
	@echo "Decompressing..."
	tar -xf ./$^
	@echo "Removing archive"
	rm ./$^
	@echo

$(SDL2_TTF_DIR): $(SDL2_TTF_DIR).tar.gz
	@echo "Decompressing..."
	tar -xf ./$^
	@echo "Removing archive"
	rm ./$^
	@echo


# Installing SDL2 libraries
libsdl2: $(SDL2_DIR)
	@echo "Launching SDL2 installation..."
	@mkdir $(SDL2_DIR)/build
	@cd $(SDL2_DIR)/build && ../configure && make
	@echo

libsdl2_image: $(SDL2_IMAGE_DIR)
	@echo "Launching SDL2_image installation..."
	@cd $(SDL2_IMAGE_DIR) && ./configure && make
	@echo

libsdl2_ttf: $(SDL2_TTF_DIR)
	@echo "Launching SDL2_ttf installation..."
	@cd $(SDL2_TTF_DIR) && ./configure && make
	@echo


# Installing custom libraries
libccaster:
	@echo "Making libccaster..."
	@cd ./libccaster && $(MAKE)
	@echo
