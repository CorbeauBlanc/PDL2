CC=gcc
CFLAGS=-Wall -Wextra -Werror
NAME=libccaster.a
SRC= ccaster.c
OBJ= $(SRC:.c=.o)


.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	@ar qcs $@ $^

$(OBJ): $(SRC)
	@$(CC) -c $^ $(CFLAGS)

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean all
