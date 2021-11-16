# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jheiskan <jheiskan@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/27 09:59:08 by smarvin           #+#    #+#              #
#    Updated: 2021/11/15 11:42:15 by jheiskan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ./srcs/*.c

INCL = ./includes

OBJ = *.o

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c -I $(INCL) $(SRC)
	ar rc $(NAME) $(OBJ)

clean:
	/bin/rm -f $(OBJ)
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all