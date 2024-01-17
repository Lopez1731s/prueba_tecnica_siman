-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-01-17 01:02:03.093

-- tables
-- Table: Customers
CREATE TABLE Customers (
    customer_id number  NOT NULL,
    customer_unique_id varchar2(255)  NULL,
    customer_zip_code_prefix number  NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (customer_id)
) ;

-- Table: Order_Items
CREATE TABLE Order_Items (
    order_item_id number  NOT NULL,
    order_id number  NULL,
    product_id number  NULL,
    seller_id number  NULL,
    price number(10,2)  NULL,
    freight_value number(10,2)  NULL,
    CONSTRAINT Order_Items_pk PRIMARY KEY (order_item_id)
) ;

-- Table: Orders
CREATE TABLE Orders (
    order_id number  NOT NULL,
    customer_id number  NULL,
    order_status varchar2(50)  NULL,
    order_purchase_timestamp timestamp  NULL,
    CONSTRAINT Orders_pk PRIMARY KEY (order_id)
) ;

-- foreign keys
-- Reference: FK_0 (table: Orders)
ALTER TABLE Orders ADD CONSTRAINT FK_0
    FOREIGN KEY (customer_id)
    REFERENCES Customers (customer_id);

-- Reference: FK_1 (table: Order_Items)
ALTER TABLE Order_Items ADD CONSTRAINT FK_1
    FOREIGN KEY (order_id)
    REFERENCES Orders (order_id);

-- End of file.

