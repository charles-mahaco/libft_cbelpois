# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cbelpois <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/23 14:20:35 by cbelpois          #+#    #+#              #
#    Updated: 2019/10/23 14:20:39 by cbelpois         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

FLAGS = -Wall -Wextra -Werror

NAME = libft.a

BNS = ft_lstadd_back_bonus.c\
	  ft_lstadd_front_bonus.c\
	  ft_lstclear_bonus.c\
	  ft_lstdelone_bonus.c\
	  ft_lstiter_bonus.c\
	  ft_lstlast_bonus.c\
	  ft_lstnew_bonus.c\
	  ft_lstsize_bonus.c\
	  ft_lstmap_bonus.c\

SOURCES = ft_atoi.c\
		  ft_bzero.c\
		  ft_calloc.c\
		  ft_isalnum.c\
		  ft_isalpha.c\
		  ft_isascii.c\
		  ft_isdigit.c\
		  ft_isprint.c\
		  ft_itoa.c\
		  ft_memccpy.c\
		  ft_memchr.c\
		  ft_memcmp.c\
		  ft_memcpy.c\
		  ft_memmove.c\
		  ft_memset.c\
		  ft_putchar_fd.c\
		  ft_putendl_fd.c\
		  ft_putnbr_fd.c\
		  ft_putstr_fd.c\
		  ft_split.c\
		  ft_strchr.c\
		  ft_strdup.c\
		  ft_strjoin.c\
		  ft_strlcat.c\
		  ft_strlcpy.c\
		  ft_strlen.c\
		  ft_strmapi.c\
		  ft_strncmp.c\
		  ft_strnstr.c\
		  ft_strrchr.c\
		  ft_strtrim.c\
		  ft_substr.c\
		  ft_tolower.c\
		  ft_toupper.c\

HEADERS = libft.h

OBJECT = $(SOURCES:.c=.o)

OBJECTB = $(BNS:.c=.o)

$(NAME):
	@$(CC) $(FLAGS) -c $(SOURCES)
	@ar rc $(NAME) $(OBJECT)
	@ranlib $(NAME)

all: $(NAME)

bonus:
	@$(CC) $(FLAGS) -c $(SOURCES) $(BNS)
	@ar rc $(NAME) $(OBJECT) $(OBJECTB)
	@ranlib $(NAME)

clean:
	@rm -rf $(OBJECT) $(OBJECTB)

fclean: clean
	@rm -fr $(NAME)

re: fclean all

rebonus: fclean bonus

.PHONY: clean fclean
