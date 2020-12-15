

# Opioid_Data
Web data project 

# Resources file is hidden b/c file is so large
# please download and store locally in a file called "Resources"
# Files are found here (select OR statewide and WA statewide: https://www.washingtonpost.com/graphics/2019/investigations/dea-pain-pill-database/#download-resources?itid=lk_inline_manual_10


Extract
Pull data from Washington post - downloaded as a zipped file then unzipped to csv from selected source at https://www.washingtonpost.com/graphics/2019/investigations/dea-pain-pill-database/#download-resources?itid=lk_inline_manual_10

Selected specifically Oregon and Washington state because National data is massive

Hypothesis: there is no difference between Oregon and Washington’s opioid epidemic

Business Question: to compare opioid sales rates across King and Multnomah county

Download the files as csv, use gitignore to stash resources folder, resources folder contains datasets




Transform

Identify the columns that we are interested in - TRANSACTION_ID = primary key to give us first normal form (unique and no redundant data), REPORTER_DEA_NO, BUYER_COUNTY, BUYER_BUS_ACT, DRUG_NAME, MME, REPORTER_BUS_ACT, REPORTER_NAME, 

Chose data where no null values

Picking just Multnomah and Clark counties to isolate Portland metro area to make data more manageable


Load
Upload to postgres/
Dictate to Postgres what each column will be and what datatype will exist in each column (varcher(80))

Git commit too large for git initially