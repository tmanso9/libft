# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: touteiro <touteiro@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/27 17:29:50 by touteiro          #+#    #+#              #
#    Updated: 2022/12/12 13:22:31 by touteiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
#CFLAGS += -fsanitize=address -g3
LIBC = ar -rcs
LIBFT_SRCS = srcs/libft/ft_atoi.c srcs/libft/ft_bzero.c srcs/libft/ft_calloc.c \
			srcs/libft/ft_isalnum.c srcs/libft/ft_isalpha.c srcs/libft/ft_isascii.c \
			srcs/libft/ft_isdigit.c srcs/libft/ft_isprint.c srcs/libft/ft_itoa.c \
			srcs/libft/ft_lstadd_back.c srcs/libft/ft_lstadd_front.c srcs/libft/ft_lstclear.c \
			srcs/libft/ft_lstdelone.c srcs/libft/ft_lstiter.c srcs/libft/ft_lstlast.c \
			srcs/libft/ft_lstmap.c srcs/libft/ft_lstnew.c srcs/libft/ft_lstsize.c \
			srcs/libft/ft_memchr.c srcs/libft/ft_memcmp.c srcs/libft/ft_memcpy.c \
			srcs/libft/ft_memmove.c srcs/libft/ft_memset.c srcs/libft/ft_putchar_fd.c \
			srcs/libft/ft_putendl_fd.c srcs/libft/ft_putnbr_fd.c srcs/libft/ft_putstr_fd.c \
			srcs/libft/ft_split.c srcs/libft/ft_strchr.c srcs/libft/ft_strdup.c \
			srcs/libft/ft_striteri.c srcs/libft/ft_strjoin.c srcs/libft/ft_strlcat.c \
			srcs/libft/ft_strlcpy.c srcs/libft/ft_strlen.c srcs/libft/ft_strmapi.c \
			srcs/libft/ft_strncmp.c srcs/libft/ft_strnstr.c srcs/libft/ft_strrchr.c \
			srcs/libft/ft_strtrim.c srcs/libft/ft_substr.c srcs/libft/ft_tolower.c \
			srcs/libft/ft_toupper.c
			
GNL_SRCS = srcs/get_next_line/get_next_line_bonus.c srcs/get_next_line/get_next_line_utils_bonus.c

PRINTF_SRCS = srcs/ft_printf/ft_utils.c srcs/ft_printf/ft_struct_utils.c srcs/ft_printf/ft_printf.c \
			srcs/ft_printf/ft_print_x.c srcs/ft_printf/ft_print_x_2.c srcs/ft_printf/ft_print_x_3.c \
			srcs/ft_printf/ft_print_text.c srcs/ft_printf/ft_print_ptr.c \
			srcs/ft_printf/ft_print_num.c srcs/ft_printf/ft_print_num_2.c srcs/ft_printf/ft_print_num_3.c
			
HEAD = incs/libft.h incs/get_next_line_bonus.h incs/ft_printf.h
		
LIBFT_OBJS = ${LIBFT_SRCS:.c=.o}
GNL_OBJS = ${GNL_SRCS:.c=.o}
PRINTF_OBJS = ${PRINTF_SRCS:.c=.o}
OBJS = ${LIBFT_OBJS} ${GNL_OBJS} ${PRINTF_OBJS}

RM = rm -f

all: ${NAME}

${NAME}:	${OBJS}
			@${LIBC} ${NAME} ${OBJS}
			@echo "libft.a compiled"

clean:
		@${RM} ${OBJS} ${BONUS_OBJS}

fclean:	clean
		@${RM} ${NAME}

re:	fclean all

.SILENT: ${OBJS}

.PHONY: all clean fclean re