##
## EPITECH PROJECT, 2017
## Malloc
## File description:
## 
##

ARRC	=	ar rc

RM	=	rm -rf

CFLAGS	+=	-Wall -Wextra -Werror -I./include/

NAME	=	libmy_malloc.so

SRCS	=	src/malloc.c	\

OBJS	=	$(SRCS:.c=.o)

RANLIB	=	ranlib

all:	$(NAME)

$(NAME):	$(OBJS)
		$(ARRC) $(NAME) $(OBJS)
		$(RANLIB) $(NAME)

clean:
	$(RM) $(OBJS)

fclean:
	$(RM) $(OBJS)
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
