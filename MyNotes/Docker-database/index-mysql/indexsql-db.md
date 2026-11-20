# Самостоятельная работа по Docker Databases: Index in MySQL

## 1. Запуск контейнера:
![](./images_indexsql-db/indexsql-db_container.png)

## 2. Подключение к MySQL:
![](./images_indexsql-db/indexsql-db_connection.png)


## 3. Создание БД и таблиц:
![](./images_indexsql-db/indexsql-db_create-db-and-tables.png)
## 3.1. Заполнение их данными:
![](./images_indexsql-db/indexsql-db_insert-into.png)
## 3.2. Проверка:
![](./images_indexsql-db/indexsql-db_test.png)

## 4. Эксперимент 1: какие индексы уже существуют:
![](./images_indexsql-db/indexsql-db_experiment-1.png)
## 4.1. Эксперимент 2: `EXPLAIN` до индекса:
![](./images_indexsql-db/indexsql-db_experiment-2.png)
## 4.2. Эксперимент 3: `CREATE INDEX` и `EXPLAIN` после:
![](./images_indexsql-db/indexsql-db_experiment-3.png)
## 4.3. Эксперимент 4: функция в `WHERE` ломает индекс:
![](./images_indexsql-db/indexsql-db_experiment-4.png)
## 4.4. Эксперимент 5: составной индекс:
![](./images_indexsql-db/indexsql-db_experiment-5_1.png)
![](./images_indexsql-db/indexsql-db_experiment-5_2.png)
## 4.5. Эксперимент 6: покрывающий индекс:
![](./images_indexsql-db/indexsql-db_experiment-6.png)

## 5. Создание лога:
![](./images_indexsql-db/indexsql-db_log.png)

## 6. Создание дампа:
![](./images_indexsql-db/indexsql-db_dump.png)