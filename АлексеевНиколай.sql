CREATE TABLE Address_information (
  address VARCHAR,
  postcode INT PRIMARY KEY,
  state VARCHAR,
  country VARCHAR
);

CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_line VARCHAR,
  product_class VARCHAR,
  product_size VARCHAR,
  brand_id INT,
  FOREIGN KEY (brand_id) REFERENCES Brands(brand_id)
);

CREATE TABLE Brands (
  brand_id INT PRIMARY KEY,
  brand INT,
  list_price FLOAT8,
  standard_cost FLOAT8
);

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  gender VARCHAR,
  DOB VARCHAR,
  job_title VARCHAR,
  job_industry_category VARCHAR,
  wealth_segment VARCHAR,
  deceased_indicator VARCHAR,
  owns_car VARCHAR,
  address VARCHAR,
  postcode INT,
  FOREIGN KEY (postcode) REFERENCES Address_information(postcode)
);

CREATE TABLE Store_transactions (
  transaction_id INT PRIMARY KEY,
  product_id INT,
  customer_id INT,
  transaction_date VARCHAR,
  online_order VARCHAR,
  order_status VARCHAR,
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

ALTER TABLE Brands
ALTER COLUMN brand TYPE VARCHAR;

ALTER TABLE Customers
ADD COLUMN state VARCHAR;

ALTER TABLE Customers
ADD COLUMN country VARCHAR;

ALTER TABLE Customers
ADD COLUMN property_valuation INT

INSERT INTO Brands (brand_id, brand, list_price, standard_cost) VALUES
  (1, 'Solex', 71.49, 53.62),
  (2, 'Trek Bicycles', 2091.47, 388.92),
  (3, 'OHM Cycles', 1793.43, 248.82),
  (4, 'Norco Bicycles', 1198.46, 381.10),
  (5, 'Giant Bicycles', 1765.3, 709.48),
  (6, 'Giant Bicycles', 1538.99, 829.65),
  (7, 'WeareA2B', 60.34, 45.26),
  (8, 'WeareA2B', 1292.84, 13.44),
  (9, 'Solex', 1071.23, 380.74),
  (10, 'WeareA2B', 1231.15, 161.60);

INSERT INTO Products (product_id, product_line, product_class, product_size, brand_id) VALUES
  (2, 'Standard', 'medium', 'medium', 1),
  (3, 'Standard', 'medium', 'large', 2),
  (37, 'Standard', 'low', 'medium', 3),
  (88, 'Standard', 'medium', 'medium', 4),
  (78, 'Standard', 'medium', 'large', 5),
  (25, 'Road', 'medium', 'medium', 5),
  (22, 'Standard', 'medium', 'medium', 7),
  (15, 'Standard', 'medium', 'medium', 7),
  (67, 'Standard', 'medium', 'large', 1),
  (12, 'Standard', 'medium', 'medium', 7);
