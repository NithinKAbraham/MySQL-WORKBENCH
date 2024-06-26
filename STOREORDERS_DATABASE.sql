CREATE DATABASE SUPERSTOREDB;
SHOW TABLES;
USE SUPERSTOREDB;

# IMPORT SUPERSTOREORDER.csv FILE USING "IMPORT TABLE WIZARD" 
# CREATE TABLE STOREORDERS
SELECT * FROM STOREORDERS;
DESCRIBE STOREORDERS;

ALTER TABLE STOREORDERS RENAME COLUMN order_id TO ORDERID;
ALTER TABLE STOREORDERS MODIFY ORDERID VARCHAR(50);
# CHANGE ORDERDATE
ALTER TABLE STOREORDERS MODIFY ORDER_DATE DATE;
ALTER TABLE STOREORDERS MODIFY SHIP_DATE DATE;



## ANALYISE THE DATA

#  RETRIEVE BASIC INFORMATION

## 1. List all Distinct PRODUCT CATEGORIES Available in the store ?
SELECT distinct CATEGORY FROM STOREORDERS;

## 2.RETRIVE ALL ORDER DETAILs WHERE ORDER PRIORITY IS "HIGH" ?
SELECT ORDERID,CATEGORY FROM STOREORDERS WHERE order_priority="high";

 ## 3. TOTAL SALES FOR EACH PRODUCT CATEGORY ?
 SELECT CATEGORY,SUM(Sales) FROM STOREORDERS GROUP BY CATEGORY;
 
 ## 4. FIND THE AVERAGE DISCOUNT GIVEN TO ALL ORDERS
 SELECT CATEGORY,AVG(discount) FROM STOREORDERS GROUP BY CATEGORY;
 
 ## 5.LIST ALL ORDERS SHIPPED USING "SECOND Class" Shipping Mode
 SELECT  * FROM STOREORDERS WHERE Ship_mode="SECOND CLASS";
 
 ## 7. RETRIVE ALL ORDERS MADE IN THE YEAR=2023
 SELECT * FROM  STOREORDERS WHERE year=2011;
 
 ## 8. FIND THE TOTAL PROFIT FOR EACH REGION WHERE TOTAL SALES ARE GREATER THAN $10,000
 
 SELECT REGION,SUM(PROFIT)  FROM STOREORDERS GROUP BY REGION HAVING SUM(SALES)>10000;
 
 ## LIST TOP 5 PRODUCT BY  SALES
 
 SELECT PRODUCT_NAME FROM STOREORDERS GROUP BY PRODUCT_NAME ORDER BY SUM(SALES) DESC LIMIT 5;
 
 ## 8. Retrieve All Orders Made by a Specific Customer 
 SELECT * FROM STOREORDERS WHERE customer_name="Joseph Holt";
 
 ## 9. Count the Number of Orders in Each Segment
 SELECT SEGMENT,COUNT(ORDERID) AS NUMBER_OF_ORDER_IN_SEGMENT FROM STOREORDERS  GROUP BY SEGMENT;
 
 ## 10.List All Orders with a Discount Greater Than 20%
 SELECT * FROM STOREORDERS WHERE Discount>.20;
 
 ## 11.Find the Total Shipping Cost for Each Shipping Mode
 SELECT SHIP_MODE,SUM(Shipping_cost) AS TOTAL_SHIPPING_COST$ FROM STOREORDERS  GROUP BY SHIP_MODE ;
 
 ## 12.Retrieve the Top 10 States by Number of Orders
 SELECT STATE ,COUNT(ORDERID) AS COUNT_OF_ORDER FROM STOREORDERS GROUP BY STATE ORDER BY COUNT_OF_ORDER DESC LIMIT 10;
 
 ## 13.Find the Orders with the Highest Profit
SELECT ORDERID,CATEGORY,PRODUCT_NAME,SUM(PROFIT) SUM_PROFITAMOUNT 
FROM STOREORDERS GROUP BY ORDERID,CATEGORY,PRODUCT_NAME ORDER BY SUM_PROFITAMOUNT DESC ;

## 14.Calculate the Total Quantity Sold for Each Product Category
SELECT CATEGORY,SUM(Quantity) AS TOTAL_QUANTITY FROM STOREORDERS GROUP BY CATEGORY;

## 15.Retrieve Orders with Sales Between $500 and $1000.
SELECT * FROM STOREORDERS  WHERE SALES BETWEEN 500 and 1000;

 
 
 

 SELECT * FROM STOREORDERS;

 
 



