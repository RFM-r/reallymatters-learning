# Мои заметки

## Введение в командную строку Bash

### Управление Терминалом

Сдвинуть вверх лог выполненных ранее команд

**Crtl-L**

или

```shell
clear
```

```shell
history
```

Выполнить нужную коману из списка History
```shell
!53
```

где 53  - это № команды из списка

Выполнить предыдущую команду
```shell
!!
```

Прервать выполнение запущенной команды

**Ctrl+C**

### Файловые операции

Показать путь текущей директории
```shell
pwd
```

Показать содержимое текущего каталога
```shell
ls
```

Показать подробное содержимое текущего каталога
```shell
ll
```

Показать подробное содержимое указанного каталога
```shell
ll dir_name
```

Показать содержимое в виде дерева
```shell
tree
```

Вернуться в домашний каталог текущего пользователя
```shell
cd ~
```

Вернуться обратно
```shell
cd -
```

**/** - знак корня директории

**~** - знак домашнего каталога пользователя

Зайти в нужный каталог
```shell
cd dir_name
```

Выйти из текущего каталога на 1 шаг вверх
```shell
cd ..
```

Выйти из текущего каталога на 2 шага вверх
```shell
cd ../..
```

### Linux

Показать версию Linux
```shell
lsb_release -a
```

Показать красивую ин-фу по системе
```shell
neofetch
```

Показать подробную ин-фу по системе
```shell
inxi -F
```

Показать Диспетчер задач
```shell
htop
```

Показать t CPU/GPU и скорость вентиляторов
```shell
sensors
```

Показать состояние оперативной памяти и подкачки (swap)
```shell
free -h
```

Показать ин-фу о текущем пользователе
```shell
w
```

или
```shell
id
```

Доступные группы
```shell
groups
```

### Софт

Календарь
```shell
cal
```

или на указанны год
```shell
cal 2026
```

Показать время
```shell
date
```

Текстовые редакторы

**Nano**
```shell
nano file_name.txt
```

Сохранить по **Cttrl+S**, выйти по **Ctrl+X**

```shell
micro file_name.txt
```

Сохранить по **Cttrl+S**, выйти по **Ctrl+Q**

Запустить Python-скрипт
```shell
python3 hello.py
```

Программа на C++
```cpp
#include <iostream>
#include <unistd.h>

int main() {
	puts("Hello\nЖдём 2 ~сек...");
	usleep(2000'000);
	return 0;
}
```
Скомпилировать код на C++
```shell
g++ main.cpp -o main.bin
```

Запустить бинарный файл
```shell
./main.bin
```

Показать используемые программой библиотеки
```shell
ldd ./main.bin
```

Покать время выполнения скрипта или программы
```shell
time ./main.bin
```

Показать таблицу ASCII
```shell
ascii -d
```

-b покажет двоичный код

### Сеть

Показать имя компьютера
```shell
hostname
```

Показать ip
```shell
hostname -I
```

Покать состояние всех сетевых интерфейсов
```shell
ip -c a
```

или кратко
```shell
ip -c r
```

Пинг
```shell
ping 8.8.8.8
```

или
```shell
ping ya.ru
```

Пинг заданное кол-во раз
```shell
ping -c 6 ya.ru
```

Показать ин-фу по домену
```shell
whois ozon.ru
```

Показать порты
```shell
netstat -an
```

Показать сетевые маршруты
```shell
route
```

Nginx - это лёгкий и небольшой веб-сервер

Readme со скриншотами, а в них выполненные результаты командной строки


docker version

docker search nginx
			 (name of the container)
			           |
docker run -d --name my-nginx -p 80:80 nginx

Проверка containers:
docker ps -a

Проверка image:
docker images

docker stop $(docker ps -q)

docker container prune

docker image prune -a

docker stop ..(name of the container)

Удаление контейнера:
docker rm ..(name of the container)

Показать работающий nginx:
curl ..(link)

docker logs -f nginxed-gg

docker restart nginxed-gg
docker stop nginxed-gg
docker start nginxed-gg


docker exec -it my-nginx bash
uname -a

apt update && apt install fastfetch

(..и после: fastfetch)

apt install htop
htop (чтобы выйти, нажать Q)

чтобы выйти из контейнера: exitc

apt install -y hollywood

apt install -y ascii
ascii