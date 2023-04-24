# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmakinen <rmakinen@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 07:56:54 by rmakinen          #+#    #+#              #
#    Updated: 2023/01/06 08:18:28 by rmakinen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
HEADER = -I ./ft_printf.h
FILES = ./ft_printf ./print_putstring ./print_putchar ./print_percentage ./print_putnum \
		./print_unsigned ./print_puthexlow ./print_puthexhi ./print_pointer
SRC = $(addsuffix .c, $(FILES))
OBJ = $(addsuffix .o, $(FILES))
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(SRC)
	cd libft && $(MAKE)
	mv ./libft/libft.a ./libftprintf.a
	cc -c $(FLAGS) $(SRC) $(HEADER)
	ar rus $(NAME) $(OBJ)

clean:
	cd libft && make clean
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
