create database name;
\n name

CREATE table products (
  id serial PRIMARY KEY,
  sku varchar(50) NOT NULL,
  name varchar(255) NOT NULL,
  price int NOT NULL
);
\d

CREATE table orders (
  id serial PRIMARY KEY,
  order_no varchar(20) NOT NULL,
  traking_no varchar(20)
);

CREATE table orders_details (
  id serial PRIMARY KEY,
  product_id int REFERENCES products(id),
  order_id int REFERENCES orders(id) ON DELETE CASCADE,
  quantity int DEFAULT 1
);

INSERT INTO products (name, price) VALUES ('Jugo', 2500);

select * from products;

select * from products where price <= 40000;

update products set price = 20000;

ALTER TABLE products alter column name type varchar(255);

drop table products;

Products           OrderDetails            Orders
id(1) salchichon   id(1) p_id(1) o:id(1)   id(1) 0_001 track_001
2 limon            id(2) p_id(3) o:id(1)
3 pan              id(3) p_id(4) o:id(1)
4 cocacola
