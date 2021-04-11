# ANDREW RIDGWAY
## JLL Interview Files

**STRUCTURE**

_DATA_
* Contains most raw sources if auto download in Alteryx wasn't possible
* Also Contains my "Create" ABS Merged. I ran out of time to generate and ETL and query process to make this table

_ETL_
* Contains 
1. ACNC_Joined SQLlite DB - I chose SQLLite as I wanted SQL capabilities but needed an easily portable format - SQLLite always fits this bill
2. ETL_Workflow - This is the Alteryx Flow that handled initial ETL from source I have Also included example pulls from ABS data to show _how_ that ETL process could have gone if time permitted
3. Two custom SQL queries that pull from that database into the Tableau Report so that the DB - > Tableau step isn't muddied

_REPORT_
* Contains the Tableau Report

_REVIEW_
* Contiains some initial notes on my initial review of the ACNC data


