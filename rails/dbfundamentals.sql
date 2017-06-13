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
INSERT INTO products (name, price) VALUES ('TV', 10000);
INSERT INTO products (name, price) VALUES ('PC', 20000);
INSERT INTO products (name, price) VALUES ('Github', 15000);
INSERT INTO products (name, price) VALUES ('Makeitreal', 450000);

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

INSERT INTO orders (order_no, traking_no) VALUES ('order_001', '01');
INSERT INTO orders (order_no, traking_no) VALUES ('order_002', '02');

INSERT INTO orders_details (product_id, order_id) VALUES (1, 3);
INSERT INTO orders_details (product_id, order_id) VALUES (2, 3);

INSERT INTO orders_details (product_id, order_id) VALUES (3, 4);
INSERT INTO orders_details (product_id, order_id) VALUES (5, 4);

//// Hotels ////

CREATE table rooms (
  id serial PRIMARY KEY,
  user_id int REFERENCES users(id)
);

CREATE table users (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);

INSERT INTO rooms (room_no) VALUES (101);
INSERT INTO rooms (room_no) VALUES (102);
INSERT INTO rooms (room_no) VALUES (103);
INSERT INTO rooms (room_no) VALUES (201);
INSERT INTO rooms (room_no) VALUES (202);
INSERT INTO rooms (room_no) VALUES (203);

INSERT INTO users (name) VALUES ('Pepe');
INSERT INTO users (name) VALUES ('Rodrigo');
INSERT INTO users (name) VALUES ('James');
INSERT INTO users (name) VALUES ('Mateo');

UPDATE rooms set user_id = 1 where room_no = 101;
UPDATE rooms set user_id = 2 where room_no = 201;
UPDATE rooms set user_id = 3 where room_no = 102;

select * from rooms;

select * from rooms, users where rooms.user_id = users.id;

select rooms.* from rooms, users where rooms.user_id = users.id

select users.* from rooms, users where rooms.user_id = users.id

select * from rooms join users on rooms.user_id = users.id;

select * from rooms join users on rooms.user_id = users.id WHERE users.name = 'Rodrigo';

select * from rooms left join users on rooms.user_id = users.id;

select * from rooms right join users on rooms.user_id = users.id;
