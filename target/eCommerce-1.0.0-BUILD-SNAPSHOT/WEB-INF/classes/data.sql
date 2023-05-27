-- Create tables if they don't exist
CREATE TABLE IF NOT EXISTS app_category
(
    id
    INT
    PRIMARY
    KEY
    AUTO_INCREMENT,
    name
    VARCHAR
(
    255
),
    parentid INT
    );

CREATE TABLE IF NOT EXISTS app_product
(
    id
    INT
    PRIMARY
    KEY
    AUTO_INCREMENT,
    name
    VARCHAR
(
    255
),
    price DECIMAL
(
    10,
    2
)
    );

CREATE TABLE IF NOT EXISTS app_product_category
(
    productid
    INT,
    categoryid
    INT,
    FOREIGN
    KEY
(
    productid
) REFERENCES app_product
(
    id
),
    FOREIGN KEY
(
    categoryid
) REFERENCES app_category
(
    id
)
    );

-- Categories
INSERT INTO app_category (id, name, parentid)
VALUES (1, 'Electronics', NULL);
INSERT INTO app_category (id, name, parentid)
VALUES (2, 'Clothing, Shoes & Accessories', NULL);
INSERT INTO app_category (id, name, parentid)
VALUES (3, 'Home & Outdoor', NULL);
INSERT INTO app_category (id, name, parentid)
VALUES (4, 'Beauty & Personal Care', NULL);
INSERT INTO app_category (id, name, parentid)
VALUES (5, 'Everything Else', NULL);

-- Subcategories for 'Electronics'
INSERT INTO app_category (id, name, parentid)
VALUES (6, 'Audio & Video Components', 1);
INSERT INTO app_category (id, name, parentid)
VALUES (7, 'Camera & Photo', 1);
INSERT INTO app_category (id, name, parentid)
VALUES (8, 'Computers', 1);

-- Subcategories for 'Clothing, Shoes & Accessories'
INSERT INTO app_category (id, name, parentid)
VALUES (9, 'Clothing', 2);
INSERT INTO app_category (id, name, parentid)
VALUES (10, 'Costumes & Accessories', 2);
INSERT INTO app_category (id, name, parentid)
VALUES (11, 'Fashion Accessories', 2);

-- Subcategories for 'Home & Outdoor'
INSERT INTO app_category (id, name, parentid)
VALUES (12, 'Furniture, Decor & Storage', 3);
INSERT INTO app_category (id, name, parentid)
VALUES (13, 'Antiques', 3);
INSERT INTO app_category (id, name, parentid)
VALUES (14, 'Appliances', 3);

-- Subcategories for 'Beauty & Personal Care'
INSERT INTO app_category (id, name, parentid)
VALUES (15, 'Accessories', 4);
INSERT INTO app_category (id, name, parentid)
VALUES (16, 'Bath & Shower', 4);
INSERT INTO app_category (id, name, parentid)
VALUES (17, 'Feminine Hygiene', 4);

-- Products for Category 'Electronics > Audio & Video Components'
INSERT INTO app_product (id, name, price)
VALUES (1, 'TV 4K (32 GB)', 223.22);
INSERT INTO app_product (id, name, price)
VALUES (2, 'RCA ANT751 OUTDOOR ANTENNA OPTIMIZED FOR DIGITAL RECEPTION - UPTO 3.3 FT', 49.22);
INSERT INTO app_product (id, name, price)
VALUES (3, 'APC REPLACEMENT BATTERY NO 24', 299.00);
INSERT INTO app_product_category (productid, categoryid)
VALUES (1, 6);
INSERT INTO app_product_category (productid, category
