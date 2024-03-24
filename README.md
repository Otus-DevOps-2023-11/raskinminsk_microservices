# raskinminsk_microservices
raskinminsk microservices repository

# HW docker-2
Установлен docker
Основные комманды docker
Создание своего образа и работа с ним
Установка docker-machine
Создание yc compute instance
Создание docker-machine docker host
Работа с Docker Hub
- загрузка своего образа на Docker Hub
- проверка использования своего образа с Docker Hub

# HW docker-3
Сборка Docker-образа для сервисного приложения
Оптимизация работу с Docker-образами
Запуск и работа приложения на основе Docker-образов
Запуск контейнеров при помощи docker run
Разбиение приложения на несколько компонентов
Запуск микросервисное приложение
Микросервисное приложение - полностью корректной работы добиться не удалось

# HW docker-4
# Запуск контейнеров с использованием драйверов сети bridge, none, host, и сетевыми псевдонимами.
# Запуск приложения с разделением работы в 2-х bridge сетях front_net и back_net.
# Запуск приложения с помощью docker compose и docker-compose.yml.
# docker-compose.yml изменен с добавлением 2-х сетей для работы контейнеров и
# подстановкой  переменных окружения из файла параметров .env.
# Имя проекта образуется:
# - из названия папки в которой находится файл docker-compose.yml.
# - ключ -p при запуске docker compose docker-compose.yml
# - атрибут name в заголовке docker-compose.yml
