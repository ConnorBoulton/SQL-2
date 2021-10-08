CREATE TABLE users(
  user_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30),
  email VARCHAR(50)
  );
  
CREATE TABLE products(
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  price NUMERIC
  );
  
CREATE TABLE cart(
  cart_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  product_id INT NOT NULL REFERENCES products(product_id),
  quantity NUMERIC
);



INSERT INTO users(
  first_name, email)
  VALUES 
  ('Connor', 'soccerworld22@gmail.com');
  
INSERT INTO users(
  first_name, email)
  VALUES 
  ('James', 'James.C45@gmail.com');
  
INSERT INTO users(
  first_name, email)
  VALUES 
  ('Sarah', 'SarahLynn@gmail.com');


  INSERT INTO products(
  name, price)
  VALUES 
  ('book', 14.99);
  
INSERT INTO products(
  name, price)
  VALUES 
  ('Cheese', 7.99);
  
INSERT INTO products(
  name, price)
  VALUES 
  ('shoes', 40.45);
  
INSERT INTO products(
  name, price)
  VALUES 
  ('wrist watch', 32.99);
  
INSERT INTO products(
  name, price)
  VALUES 
  ('Onslaught MTG Packs', 3.99);


INSERT INTO cart(
  quantity, user_id, product_id)
  VALUES
  (5, 2, 5);
  
INSERT INTO cart(
  quantity, user_id, product_id)
  VALUES
  (1, 3, 2);


SELECT c.user_id, c.quantity, p.*
FROM cart c 
JOIN products p ON c.product_id = p.product_id
WHERE user_id = 1;


SELECT p.*, c.*, u.*
FROM cart c 
JOIN products p ON c.product_id = p.product_id
JOIN users u ON u.user_id = c.user_id;

SELECT SUM(c.quantity * p.price)
FROM cart c
JOIN products p ON c.product_id = p.product_id;

UPDATE cart
SET quantity = 45
WHERE user_id = 2;