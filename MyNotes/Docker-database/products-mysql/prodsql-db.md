# Самостоятельная работа по Docker Databases: Основные SQL-операции на примере двух таблиц «Products 1» и «Products 2»

## 1. Запуск контейнера:
![](./images_prodsql-db/prodsql-db_container.png)

## 2. Подключение к MySQL:
![](./images_prodsql-db/prodsql-db_connection.png)

## 3. Создание базы данных:
![](./images_prodsql-db/prodsql-db_first-new-database.png)

## 4. Просмотр существующих баз данных:
![](./images_prodsql-db/prodsql-db_databases.png)

## 5. Создание таблиц:
![](./images_prodsql-db/prodsql-db_create-table.png)

### 5.1. Их просмотр:
![](./images_prodsql-db/prodsql-db_show-tables.png)

## 6. Вставка данных и их просмотр:
![](./images_prodsql-db/prodsql-db_insert-data.png)

## 7. Основные операции:
### 7.1. Выборка(SELECT):
#### Вывод товаров из *products1* дороже 150:
![](./images_prodsql-db/prodsql-db_select.png)

### 7.2. Проекция(PROJECTION):
#### Вывод только названий товаров из *products1*:
![](./images_prodsql-db/prodsql-db_proj.png)

### 7.3. Объединение(UNION):
#### Получение единого списка названий товаров из обеих таблиц (без дубликатов):
![](./images_prodsql-db/prodsql-db_union.png)

### 7.4. Разность(EXCEPT/MINUS):
#### Вывод товаров, которые есть в *products1*, но отсутствуют в *products2*:
![](./images_prodsql-db/prodsql-db_except.png)

### 7.5. Пересечение(INTERSECT):
#### Нахождение товаров, которые есть и в *products1*, и в *products2* (с одинаковой ценой):
![](./images_prodsql-db/prodsql-db_intersect.png)

### 7.6. Декартово произведение(CARTESIAN PRODUCT):
#### Получение всех возможных пар "товар из первой таблицы — товар из второй":
![](./images_prodsql-db/prodsql-db_cartesian-product.png)

### 7.7. Соединение(JOIN):
#### Соединение таблиц по названию товара и показ цен из обеих таблиц:
![](./images_prodsql-db/prodsql-db_join.png)

## 8. Создание дампа:
![](./images_prodsql-db/prodsql-db_create-dump.png)
### 8.1. Просмотр созданного дампа:
![](./images_prodsql-db/prodsql-db_dump-itself.png)

## 9. "Уборка":
### 9.1. Проверка БД и таблиц:
![](./images_prodsql-db/prodsql-db_show-db-and-tables.png)

### 9.2. Удаление базы данных и проверка удаления:
![](./images_prodsql-db/prodsql-db_drop-db.png)

## 10. Восстановление БД из дампа:
### 10.1. Создание пустой БД с тем же именем и проверка создания:
![](./images_prodsql-db/prodsql-db_new-db.png)

### 10.2. Импортирование:
![](./images_prodsql-db/prodsql-db_import.png)

### 10.3. Проверка содержимого восстановленной БД:
![](./images_prodsql-db/prodsql-db_new-restored_show-db-and-tables.png)