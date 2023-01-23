CREATE TABLE customer (
    id INTEGER PRIMARY KEY NOT NULL,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    email VARCHAR(200) UNIQUE
);

CREATE TABLE order_ (
    id INTEGER PRIMARY KEY NOT NULL,
    customer_id INTEGER,
    date_ VARHAR(20),
    status_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer (id), 
    FOREIGN KEY (status_id)  REFERENCES status (id) 
);

CREATE TABLE status (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50)
);

CREATE TABLE product_order (
    order_id INTEGER PRIMARY KEY NOT NULL,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES order_ (id),
    FOREIGN KEY (product_id) REFERENCES product (id)
);

CREATE TABLE product (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    price FLOAT
);

INSERT INTO "customer" ("f_name", "l_name", "email") VALUES ("Ignas", "Rocys", "irocys@gmail.com");
INSERT INTO "customer" ("f_name", "l_name", "email") VALUES ("Tomas", "Puska", "tpuska@gmail.com");
INSERT INTO "customer" ("f_name", "l_name", "email") VALUES ("Darius", "Dumsa", "ddumsa@gmail.com");
INSERT INTO "customer" ("f_name", "l_name", "email") VALUES ("Sandra", "Kescyte", "skescyte@gmail.com");
INSERT INTO "customer" ("f_name", "l_name", "email") VALUES ("Kristina", "Ruone", "kruone@gmail.com");
INSERT INTO "customer" ("f_name", "l_name", "email") VALUES ("Dzeraldas", "Trumsa", "dtrumsa@gmail.com");

INSERT INTO "order_" ("customer_id", "date_", "status_id") VALUES (1, "2023-01-19", "Vykdomas");
INSERT INTO "order_" ("customer_id", "date_", "status_id") VALUES (2, "2023-01-19", "Vykdomas");
INSERT INTO "order_" ("customer_id", "date_", "status_id") VALUES (3, "2023-01-19", "Patvirtintas");
INSERT INTO "order_" ("customer_id", "date_", "status_id") VALUES (4, "2023-01-19", "Atmestas");
INSERT INTO "order_" ("customer_id", "date_", "status_id") VALUES (5, "2023-01-19", "Ivykdytas");
INSERT INTO "order_" ("customer_id", "date_", "status_id") VALUES (6, "2023-01-19", "Ivykdytas");

INSERT INTO "status" ("name") VALUES ("Vykdomas");
INSERT INTO "status" ("name") VALUES ("Patvirtintas");
INSERT INTO "status" ("name") VALUES ("Ivykdytas");

INSERT INTO "product_order" ("product_id", "quantity") VALUES (1, 1);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (2, 4);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (3, 2);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (1, 1);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (2, 4);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (3, 2);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (1, 1);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (2, 4);
INSERT INTO "product_order" ("product_id", "quantity") VALUES (3, 2);

INSERT INTO "product" ("name", "price") VALUES ("Kebabas", 4.5);
INSERT INTO "product" ("name", "price") VALUES ("Gruzdinti koldunai", 2.5);
INSERT INTO "product" ("name", "price") VALUES ("Bulvytes free", 1.5);





-- SELECT order_id as "order id",
--        customer.l_name as "name",
--        order_.date_ as "date",
--        product.price * product_order.quantity as "price"
--        FROM product_order
--        JOIN order_ ON order_.id = product_order.order_id
--        JOIN product on product.id = product_order.product_id
--        JOIN customer on customer.id = order_.customer_id
--        GROUP BY order_id;

-- SELECT 
-- 	order_.id, 
-- 	product.name, 
-- 	product_order.quantity, 
-- 	product.price, 
-- 	product_order.quantity * product.price as "total"
-- FROM order_
-- JOIN product_order ON order_.id = product_order.order_id
-- JOIN product ON product.id = product_order.product_id;

-- SELECT 
-- 	order_.id, 
-- 	product.name, 
-- 	sum(product_order.quantity) as "QTY", 
-- 	product.price, 
-- 	sum(product_order.quantity) * product.price as "total"
-- FROM order_
-- JOIN product_order ON order_.id = product_order.order_id
-- JOIN product ON product.id = product_order.product_id
-- group by product_order.product_id;


-- DROP TABLE customer;
-- DROP TABLE order_;
-- DROP TABLE status;
-- DROP TABLE product_order;
-- DROP TABLE product;

