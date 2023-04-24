# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmakinen <rmakinen@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/31 15:09:16 by rmakinen          #+#    #+#              #
#    Updated: 2022/12/21 08:46:55 by rmakinen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
HEADER = -I ./libft.h
FILES = ./ft_atoi ./ft_bzero ./ft_isalnum ./ft_isalpha ./ft_isascii ./ft_isdigit \
		./ft_isprint ./ft_memchr ./ft_memcmp ./ft_memcpy ./ft_memmove ./ft_memset \
		./ft_strchr ./ft_strlen ./ft_strlcpy ./ft_strncmp ./ft_strrchr \
		./ft_tolower ./ft_toupper ./ft_strnstr ./ft_strlcat ./ft_strdup \
		./ft_substr ./ft_strjoin ./ft_strtrim ./ft_strchr ./ft_putchar_fd \
		./ft_putstr_fd ./ft_putnbr_fd ./ft_putendl_fd ./ft_strmapi ./ft_striteri \
		./ft_itoa ./ft_calloc ./ft_split ./ft_putchar ./ft_putstr ./ft_putnbr
BONUS = ./ft_lstnew_bonus.c ./ft_lstadd_front_bonus.c ./ft_lstsize_bonus.c
SRC = $(addsuffix .c, $(FILES))
OBJ = $(addsuffix .o, $(FILES))
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(SRC)
	cc -c $(FLAGS) $(SRC) $(HEADER)
	ar rus $(NAME) $(OBJ)

bonus: $(BONUS:.c=.o)

$(BONUS:.c=.o): $(BONUS)
	cc -c $(FLAGS) $(BONUS) $(HEADER)
	ar rus $(NAME) $(BONUS:.c=.o)

clean:
	/bin/rm -f $(OBJ) $(BONUS:.c=.o)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
