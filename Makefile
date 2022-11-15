# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: miguelro <miguelro@students.42lisboa.com>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/04 15:22:05 by miguelro          #+#    #+#              #
#    Updated: 2022/11/11 15:13:49 by miguelro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_check_format.c ft_printf.c ft_put.c ft_putnbrs.c \

OBJS =	$(SRCS:.c=.o)

CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(SRCS:.c=.o)
				@ar rcs $(NAME) $(SRCS:.c=.o)

clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)