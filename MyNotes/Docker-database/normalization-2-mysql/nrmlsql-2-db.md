# Самостоятельная работа по Docker Databases: Нормализация данных в БД (MySQL) #2

## 1. Запуск контейнера:
![](./images_nrmlsql-2-db/nrmlsql-2-db_container.png)

## 2. Подключение к MySQL:
![](./images_nrmlsql-2-db/nrmlsql-2-db_connection.png)

## 3. Создание БД и таблицы; вставка данных в таблицу и её показ:
![](./images_nrmlsql-2-db/nrmlsql-2-db_create-db-and-insert-table.png)
![](./images_nrmlsql-2-db/nrmlsql-2-db_show-table.png)

## 4. Приведение этой таблицы к третьей нормальной форме (3NF) засчёт добавления 4-ёх таблиц:
### 4.1. `clients` - клиенты:
![](./images_nrmlsql-2-db/nrmlsql-2-db_table-clients.png)
### 4.2. `products` - продукты(товары):
![](./images_nrmlsql-2-db/nrmlsql-2-db_table-products.png)
### 4.3. `sales` - продажи:
![](./images_nrmlsql-2-db/nrmlsql-2-db_table-sales.png)
### 4.4. `sale_items` - позиции продаж:
![](./images_nrmlsql-2-db/nrmlsql-2-db_table-sale-items.png)

## 5. Перенесение данных с прошлой таблицы в новые:
![](./images_nrmlsql-2-db/nrmlsql-2-db_insert-selectdistinct.png)
####
![](./images_nrmlsql-2-db/nrmlsql-2-db_show-new-tables.png)

## 6. Создание дампа:
![](./images_nrmlsql-2-db/nrmlsql-2-db_dump-creation.png)

## 7. Создание лога:
![](./images_nrmlsql-2-db/nrmlsql-2-db_log-creation.png)
