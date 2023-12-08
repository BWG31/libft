# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgolding <bgolding@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/24 11:39:18 by bgolding          #+#    #+#              #
#    Updated: 2023/12/08 14:50:26 by bgolding         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

SRC_DIR	=	src/
OBJ_DIR	=	obj/
INC		=	inc/
SRC_F	=	ft_isalpha \
			ft_isdigit \
			ft_isalnum \
			ft_isascii \
			ft_isprint \
			ft_strlen \
			ft_memset \
			ft_bzero \
			ft_memcpy \
			ft_memmove \
			ft_strlcpy \
			ft_strlcat \
			ft_toupper \
			ft_tolower \
			ft_strchr \
			ft_strrchr \
			ft_strncmp \
			ft_memchr \
			ft_memcmp \
			ft_strnstr \
			ft_atoi \
			ft_calloc \
			ft_strdup \
			ft_substr \
			ft_strjoin \
			ft_strtrim \
			ft_split \
			ft_itoa \
			ft_strmapi \
			ft_striteri \
			ft_putchar_fd \
			ft_putstr_fd \
			ft_putendl_fd \
			ft_putnbr_fd \
			ft_lstnew_bonus \
			ft_lstadd_front_bonus \
			ft_lstsize_bonus \
			ft_lstlast_bonus \
			ft_lstadd_back_bonus \
			ft_lstdelone_bonus \
			ft_lstclear_bonus \
			ft_lstiter_bonus \
			ft_lstmap_bonus \
			ft_printf \
			i_put \
			get_next_line_bonus \
			get_next_line_utils_bonus
SRCS	=	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_F)))
OBJS	=	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_F)))

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror
RM		=	rm -f
AR		=	ar -r

all:		$(NAME)

$(NAME):	$(OBJS)
			$(AR) $@ $^

$(OBJ_DIR)%.o:		$(SRC_DIR)%.c | $(OBJ_DIR)
					$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
			mkdir -p $@

clean:
			$(RM) -rf $(OBJ_DIR)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re