# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ynuiga <ynuiga@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/15 07:02:42 by ynuiga            #+#    #+#              #
#    Updated: 2023/05/16 09:28:39 by ynuiga           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

build:
	docker-compose -f ./srcs/docker-compose.yml build

up:
	sudo mkdir -p /home/ynuiga/data/mariadb_vol
	sudo mkdir -p /home/ynuiga/data/wordpress_vol
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f ./srcs/docker-compose.yml down
fclean:
	sudo rm -rf /home/ynuiga/data/mariadb_vol
	sudo rm -rf /home/ynuiga/data/wordpress_vol
	sudo docker-compose -f ./srcs/docker-compose.yml down --rmi all -v
