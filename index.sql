--Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT ProductName, Price $
FROM products
ORDER BY price desc
LIMIT 1;

-- Вывести два самых дорогих товара из категории Beverages из USA

SELECT *
FROM products prod
JOIN categories ON prod.CategoryID = categories.CategoryID
WHERE CategoryName = 'Beverages'
ORDER BY price DESC
LIMIT 2


-- Вывести список стран, которые поставляют морепродукты

SELECT DISTINCT Country
 FROM products
 JOIN categories ON products.CategoryID = categories.CategoryID
 JOIN suppliers ON products.SupplierID = suppliers.SupplierID
 WHERE CategoryName = 'Seafood'
