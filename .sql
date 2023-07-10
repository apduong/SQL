Create SYNTAX
CREATE TABLE TableName (
	COLUMN_ID int IDENTITY(1,1),
	COLUMN_A int,
	COLUMN_DESCRIPTION varchar(200),
	PRIMARY KEY (COLUMN_ID)
);

Bulk Insert SYNTAX
BULK INSERT TableName
FROM ‘file path’
WITH (FORMAT = ‘CSV’);

Alter SYNTAX
ALTER TABLE TableName1
ADD FOREIGN KEY (SEASON_ID)
REFERENCE TableName2(SEASON_ID);

SELECT
Order_Customer.ORDER_ID AS 'Order Number', 
Channel.CHANNEL_DESCRIPTION AS 'From',
Channel_Status.CHA_DESCRIPTION AS 'Still Open',
Customer.CUST_FIRSTNAME AS 'First Name',
Customer.CUST_LASTNAME AS 'Last Name'
From Order_Customer

INNER JOIN Channel ON Channel.CHANNEL_ID = Order_Customer.CHANNEL_ID
INNER JOIN Channel_Status ON Channel_Status.CHA_DESCRIPTION=Channel.CHANNEL_ID
INNER JOIN Customer ON Customer.CUSTOMER_ID = Order_Customer.CUSTOMER_ID

WHERE Channel.CHANNEL_ID = 3


SELECT 
Order_Customer.ORDER_ID AS 'Order ID',
Promotion_History.CUSTOMER_ID AS 'Customer ID',
Promotion.CUSTOMER_PROMO_CODE AS 'Promo Code',
Promotion.DESCRIPTION AS 'Description',
Promo_Season.START_DATE AS 'Start Date',
Promo_Season.END_DATE AS 'End Date'


FROM Promotion
INNER JOIN Promo_Season ON Promo_Season.SEASON_ID = Promotion.SEASON_ID
INNER JOIN Order_Customer ON Order_Customer.CUSTOMER_PROMO_CODE= Order_Customer.CUSTOMER_PROMO_CODE
INNER JOIN Promotion_History on Promotion_History.CUSTOMER_PROMO_CODE = Promotion.CUSTOMER_PROMO_CODE
Where Promotion.CUSTOMER_PROMO_CODE= '1'



Customer.CUST_FIRSTNAME AS 'First Name',
Customer.CUST_LASTNAME AS 'Last Name',
INNER JOIN Customer on Customer.CUSTOMER_ID=Order_Customer.CUSTOMER_ID


newer
DECLARE
@State int

SELECT 
@State = '56'
SELECT
Order_Customer.ORDER_ID AS 'Order Number', 
Customer.CUSTOMER_ID AS 'Customer ID',
Customer.CUST_FIRSTNAME AS 'First Name',
Customer.CUST_LASTNAME AS 'Last Name',
Order_Customer.ORDER_DATE AS 'Date',
State_Province.STATE_PROVINCE_NAME AS 'State',
Country.COUNTRY_NAME AS 'Country'

FROM Order_Customer
INNER JOIN Customer ON Customer.CUSTOMER_ID = Order_Customer.CUSTOMER_ID
INNER JOIN Country ON Country.COUNTRY_ID = Order_Customer.COUNTRY_ID
INNER JOIN State_Province ON State_Province.STATE_PROVINCE_ID=Order_Customer.STATE_PROVINCE_ID


WHERE Order_Customer.STATE_PROVINCE_ID>=@State OR Order_Customer.STATE_PROVINCE_ID= '1'
