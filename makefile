##
## EPITECH PROJECT, 2023
## sblmparser [WSL : Ubuntu-22.04]
## File description:
## Makefile
##

ROOT	=	main.c


TESTS	=	

NAME	=	calculator

all:	$(NAME)

$(NAME):	$(SRC) $(LIB) $(ROOT)
	@echo -e "\e[0m\e[1mConstruction de la librairie..."
	@echo -e "\e[1m\e[32mConstruction terminée avec succès !"
	@echo -e "\e[0m\e[1mConstruction de l'executable..."
	@gcc -o $(NAME) $(ROOT) $(SRC) $(CFLAGS) $(LIB)
	@echo -e "\e[1m\e[32mConstruction terminée avec succès !"

clean:
	@echo -e "\e[0m\e[1mNettoyage des fichiers..."

fclean:	clean
	@rm -f $(NAME)
	@rm -f ../../include/$(NAME)

tests_run:
	gcc -o unit_tests $(SRC) $(ROOT) $(TESTS) -lcriterion --coverage
	./unit_tests

re:	fclean all