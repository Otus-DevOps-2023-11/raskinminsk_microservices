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

# HW gitlab-ci-1
# Создание виртуальной машины с установленным Docker.
# Инсталляция, настройка и проверка gitlab-ce версии 15.5.0 методом Docker.
# Пайплайн для GitLab. Добавление и регистрация раннера методом Docker.
# Добавление Reddit в проект. Тесты в пайплайне.
# Добавление окружения и проверка dev.
# Добавление этапов stage и production, их окружения и условий, проверка.
# Добавление динамического окружения и проверка.

#HW  monitoring-1
Prometheus: запуск, конфигурация, знакомство с Web UI
Мониторинг состояния микросервисов
Сбор метрик хоста с использованием экспортера
Репозиторий DockerHUB:https://hub.docker.com/repositories/raskinminsk

# HW logging-1
Выполнено:
Сбор неструктурированных логов
Визуализация логов
Сбор структурированных логов
Распределенная трасировка

# HW kubernetes-2
Локально установлены kubectl и minikube
Создан minikube кластер
Созданы манифесты deployment сервисов ui, comment, post и mongodb
Созданы манифесты service сервисов ui, comment, post, mongodb
Созданы сервисы comment-mongodb-service и post-mongodb-service
Приложения запущены в нэймспэйсе dev
В Яндекс Облаке создан кластер в Managed Service for Kubernetes
Добавлены учетные данные кластера Kubernetes в конфигурационный файл kubectl:
 $ yc managed-kubernetes cluster get-credentials --id cat2sjuvk5cvjhg7e6ko --external
 $ kubectl config current-context
Созданые манифесты применены к созданному в ЯО кластеру
Приложение доступно по адресу 
 http://158.160.101.85:30464
 http://178.154.201.108:30464

# HW kubernetes-3
Создан LoadBalancer для сервиса ui
Создан nginx Ingress controller и настроен доступ к сервису ui через nginx ingress controller
Создан TLS сертификат, добавлен в секреты кластера
Настроена политика сети
Создан volume для хранения базы mongodb
Создан persistentVolumeClaim и добавлен в манифест mongodb
