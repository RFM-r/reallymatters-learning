# Самостоятельная работа по Docker Databases: Нормализация данных в БД (MySQL)

## 1. Запуск контейнера:
![](./images_nrmlsql-db/nrmlsql-db_container.png)

## 2. Подключение к MySQL:
![](./images_nrmlsql-db/nrmlsql-db_connection.png)

## 3. Создание БД и таблицы; вставка данных в таблицу и её показ:
![](./images_nrmlsql-db/nrmlsql-db_create-db-and-insert-table.png)
![](./images_nrmlsql-db/nrmlsql-db_show-table.png)
## 3.1. Аномалии:
### Вставка (insert anomaly) - остальные данные являются 'NULL', из-за того, что нельзя добавить нового покупателя без отчёта:
![](./images_nrmlsql-db/nrmlsql-db_insert-anomaly.png)
### Обновление (update anomaly) - обновление несколько строк, из-за того, что они имеют одинаковый `customer_name`:
![](./images_nrmlsql-db/nrmlsql-db_update-anomaly.png)
### Удаление (delete anomaly) - удаление несколько данных, из-за того, что они имеют одинаковый `customer_id`:
![](./images_nrmlsql-db/nrmlsql-db_delete-anomaly.png)

## 4. Приведение этой таблицы к третьей нормальной форме (3NF) засчёт добавления 4-ёх таблиц:
### 4.1. `customers` - покупатели:
![](./images_nrmlsql-db/nrmlsql-db_table-customers.png)
### 4.2. `products` - продукты(товары):
![](./images_nrmlsql-db/nrmlsql-db_table-products.png)
### 4.3. `reports` - отчёты(репорты):
![](./images_nrmlsql-db/nrmlsql-db_table-reports.png)
### 4.4. `report_items` - позиции отчётов:
![](./images_nrmlsql-db/nrmlsql-db_table-report-items.png)

## 5. Перенесение данных с прошлой таблицы в новые:
![](./images_nrmlsql-db/nrmlsql-db_insert-selectdistinct.png)
####
![](./images_nrmlsql-db/nrmlsql-db_show-new-tables.png)

## 6. Сравнение данных с прошлой таблицы и новых:
### 6.1. `products` and `sales_unnormalized_2`:
![](./images_nrmlsql-db/nrmlsql-db_products-compare.png)
### 6.2. `reports` and `sales_unnormalized_2`:
![](./images_nrmlsql-db/nrmlsql-db_report-date-compare.png)
### 6.3. Общая сумма до и после:
![](./images_nrmlsql-db/nrmlsql-db_sum-before-and-after.png)

## 7. Создание дампа:
![](./images_nrmlsql-db/nrmlsql-db_dump-creation.png)

## 8. Создание лога:
![](./images_nrmlsql-db/nrmlsql-db_log-creation.png)