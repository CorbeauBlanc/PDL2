MAKE=/usr/bin/make
CP=/usr/bin/cp

VERSION=1.0.0

SDL2_VERSION=2.0.8
SDL2_DIR=./SDL2

SDL2_IMAGE_VERSION=2.0.3
SDL2_IMAGE_DIR=./SDL_image

SDL2_TTF_VERSION=2.0.14
SDL2_TTF_DIR=./SDL_ttf

.PHONY: all install clean libsdl2 libsdl2_image libsdl2_ttf libccaster

# Getting SDL2 sources
SDL2-$(SDL2_VERSION).tar.gz:
	@echo Getting SDL2 version $(SDL2_Version)...
	curl https://libsdl.org/release/SDL2-$(SDL2_VERSION).tar.gz
	@echo

SDL2_image-$(SDL2_IMAGE_VERSION).tar.gz:
	@echo Getting SDL_image version $(SDL2_IMAGE_VERSION)...
	curl https://www.libsdl.org/projects/SDL_image/release/SDL2_image-$(SDL2_IMAGE_VERSION).tar.gz
	@echo

SDL2_image-$(SDL2_TTF_VERSION).tar.gz:
	@echo Getting SDL_ttf version $(SDL2_TTF_VERSION)...
	curl https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-$(SDL2_TTF_VERSION).tar.gz
	@echo


# Decompressing SDL2 sources
$(SDL2_DIR): SDL2-$(SDL2_VERSION).tar.gz
	@echo Decompressing...
	tar -xf ./$^ $(SDL2_DIR)
	@echo Removing archive
	rm ./$^
	@echo

$(SDL2_IMAGE_DIR): SDL2_image-$(SDL2_IMAGE_VERSION).tar.gz
	@echo Decompressing...
	tar -xf ./$^ $(SDL2_IMAGE_DIR)
	@echo Removing archive
	rm ./$^
	@echo

$(SDL2_TTF_DIR): SDL2_ttf-$(SDL2_TTF_VERSION).tar.gz
	@echo Decompressing...
	tar -xf ./$^ $(SDL2_TTF_DIR)
	@echo Removing archive
	rm ./$^
	@echo


# Installing SDL2 libraries
libsdl2: $(SDL2_DIR)
	@echo Launching SDL2 installation...
	@mkdir $(SDL2_DIR)/build
	@cd $(SDL2_DIR)/build && ../configure && make
	@echo

libsdl2_image: $(SDL2_IMAGE_DIR)
	@echo Launching SDL2_image installation...
	@cd $(SDL2_IMAGE_DIR) && ./configure && make
	@echo

libsdl2_ttf: $(SDL2_TTF_DIR)
	@echo Launching SDL2_ttf installation...
	@cd $(SDL2_TTF_DIR) && ./configure && make
	@echo


# Installing custom libraries
libccaster:
	@echo Making libccaster...
	@cd ./libccaster && $(MAKE)
	@echo


# Generic rules
all: libsdl2 libsdl2_image libsdl2_ttf libccaster
	@echo Done.
	@echo

install:
	@echo Installing SDL2
	@cd $(SDL2_DIR)/build && sudo make install
	@echo
	@echo Installing SDL2_image
	@cd $(SDL2_IMAGE_DIR) && sudo make install
	@echo
	@echo Installing SDL2_ttf
	@cd $(SDL2_TTF_DIR) && sudo make install
	@echo

	@echo Packing PDL2
	@if ! [ -e ./build/PDL2-$(VERSION) ]; then\
		mkdir ./build/PDL2-$(VERSION);\
	fi
	$(CP) -ru ./src/* ./build/PDL2-$(VERSION)
	$(CP) -u ./libccaster/libccaster.a ./build/PDL2-$(VERSION)
