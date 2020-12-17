-------------------------------------------------------------------
-- CREATE TABLES FOR HOUSING THE OREGON & WASHINGON DEA OPIOD DATA
-------------------------------------------------------------------
-- Create OREGON table
CREATE TABLE Oregon (
	REPORTER_DEA_NO VARCHAR(80),
	REPORTER_BUS_ACT VARCHAR(80),
	REPORTER_NAME VARCHAR(80),
	BUYER_DEA_NO VARCHAR(80),
	BUYER_BUS_ACT VARCHAR(80),
	BUYER_NAME VARCHAR(80),
	BUYER_COUNTY VARCHAR(80),
	DRUG_NAME VARCHAR(80),
	TRANSACTION_ID INT,
	Product_Name VARCHAR(80),
	MME DECIMAL
);
-- Create WASHINGTON table
CREATE TABLE Washington (
	REPORTER_DEA_NO VARCHAR(80),
	REPORTER_BUS_ACT VARCHAR(80),
	REPORTER_NAME VARCHAR(80),
	BUYER_DEA_NO VARCHAR(80),
	BUYER_BUS_ACT VARCHAR(80),
	BUYER_NAME VARCHAR(80),
	BUYER_COUNTY VARCHAR(80),
	DRUG_NAME VARCHAR(80),
	TRANSACTION_ID INT,
	Product_Name VARCHAR(80),
	MME DECIMAL
);
-- Query Oregon table to verify data loaded correctly
SELECT * FROM Oregon limit 10;
SELECT count(transaction_id) from oregon;
-- Query Washington table to verify data loaded correctly
SELECT * FROM Washington limit 10;
SELECT count(transaction_id) from washington;