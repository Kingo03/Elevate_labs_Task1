use booksdb;
create table Sales (
  SaleID int auto_increment primary key,
  product varchar(255) not null,
  category varchar(255) not null,
  Quantity int not null,
  price int not null
  
);

insert into Sales (SaleID , product , category , Quantity, price)
values 
(1, 'Laptop', 'Electronics', 2, 50000),
(2, 'Headphones', 'Electronics', 5, 1500),
(3, 'Chair', 'Furniture', 10, 2000),
(4, 'Table', 'Furniture', 3, 4000),
(5, 'Mouse', 'Electronics', 7, 800);

select * from sales;

-- Sum = total value sold
select product , sum(Quantity* price) as Totalsales from sales group by product;

-- Count - Number ot sales per category.
select category, count(*) as SaleCount from sales group by category ;
select count(*) as SalesTotal from sales group by category;  

-- AVG = average price per category.
select category, avg(price) as AvgPrice from sales group by category; 

-- Group By with Multiple Columns.
SELECT Category, Product, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY Category, Product;


-- Having = Filter Grouped Results
SELECT Category, SUM(Quantity * Price) AS CategorySales
FROM Sales
GROUP BY Category
HAVING CategorySales > 10000;