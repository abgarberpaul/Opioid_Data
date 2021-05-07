## PURPOSE:
The purpose of this project was to demostrate our team's ability to Extract, Transform, and Load data. We developed an ETL workflow for US opioid perscription drug sales data as made available by the Washington Post's Freedom of Information request, and distributed via public weblink. We extracted prescription drug sales data, transforming it via Python into an appropriate format for answering our business question, and then loaded the final data into Postgres for analysis.

## STRUCTURE OF THIS REPO DIRECTORY:
The following three itmes comprise our key deliverables:
- The Jupyter Notebook titled "Transform_Data(refined).ipynb" contains our Python code that we leveraged in the TRANSFORM process.
- The CSV files titled "OR_county_Data.csv" and "WA_county_data.csv" are housed in the CSV_files folder, and contain the cleaned data resulting from our TRANSFORM process. 
- The SQL file titled "SQL_code.sql" contains the code we used to LOAD the final data into Postgres.
-

## BUSINESS QUESTION:
Our business question is to compare opioid presecription drug rates across two counties in the Portland, oregon metropolitan area. Multnomah County in Oregon and Clark County in Washington.

## NULL HYPOTHOSIS:
There is no difference between Multnomah and Clark county opioid presecription rates

## DATA SOURCE & SCOPE:
Our data was sourced from Washington Post's website containing publically available DEA data on US opioid presecription drug sales for 2006-14. Our orignial datasets were full-state data for Oregon and Washinton.
**location:** http://wwww.washingtonpost.com/graphics/2019/investigations/dea-pain-pill-database/#downloadresources)


## EXTRACT: 
Our first step was to extract the datasets. We extracted full Oregon and Washington state datasets as CSV files from Washinton Post's website.

## TRANSFORM:
We performed several transformation steps to trip down the data to only the columns and rows needed to compare Multnomah and Clark counties, and to trip the files down to more manageable size. These steps included:
  1. Read both CSV data files into a Jupyter Notebook for data exploration and clean-up.
  2. Leveraged Pandas for data clean-up:
    a. Dropped unnecessary columns, reducing the column count from 42 to 11. We created a Pandas dataframe for each county, keeping only the columns relevant for comparison (REPORTERD_DEA_NO., REPORTER_BUS_ACT, REPORTER_NAME, BUYER_DEA_NO, BUYER_BUS_ACT, BUYER_NAME, BUYER_COUNTY, DRUG_NAME, TRANSACTION_ID, Product_Name, MME)
    b. Eliminated all counties except Multnomah County Oregon, and Clark County Washington. We leveraged the Pandas LOC function to keep only rows with MULTNOMAH or CLARK in the BUYER_COUNTY column.
  3. Created separate dataframes for the cleaned-up Oregon & Washington data, and exported the dataframes to separate CSV files for loading into Postgres (for end-user analysis).

## LOAD:
WE uploaded both datasets to Postgres, so that end-users (fictional data analysts) can analyze Multnomah & Clark County opiod sales, leveraging SQL in the Postgres environment.
Load Steps:
  1. Created one table for Oregon and one table for Washington, defining the 11 columns and their respecrtive datatypes. (Tables created via SQL CREATE TABLE)
  2. Loaded CSV data files to their respective tables in Postgres.
  3. Data is loaded and read for analysis!
