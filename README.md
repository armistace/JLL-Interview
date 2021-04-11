# ANDREW RIDGWAY
## JLL Interview Files

**[PUBLIC REPORT AVAILABLE HERE](https://public.tableau.com/views/JLLInterview/WhichCharityShouldWeDonateOurTimeTo?:language=en&:display_count=y&publish=yes&:origin=viz_share_link)**


**STRUCTURE**

_DATA_
* Contains most raw sources if auto download in Alteryx wasn't possible
* Also Contains my "Manually Created" ABS Merged table. I ran out of time to generate and ETL and query process to make this table direct from ABS data
* Please Note It contains the flat files I did end up using I have provided Examples in Alteryx of How I _**think**_ this should be done and that is direct connections to the online sources - Allowing the workbook to be used as a decision making tool moving forward rather than a one off report.

_ETL_
* Contains 
1. ACNC_Joined SQLlite DB - I chose SQLLite as I wanted SQL capabilities but needed an easily portable format - SQLLite always fits this bill
2. ETL_Workflow - This is the Alteryx Flow that handled initial ETL from source I have Also included example pulls from ABS data to show _how_ that ETL process could have gone if time permitted
3. Two custom SQL queries that pull from that database into the Tableau Report so that the DB - > Tableau step isn't muddied

_REPORT_
* Contains the Tableau Reports
1. Extract mode for publish to Tableau Public
2. Direct Query mode - This is how I did the actual report - It gave me SQL capability
_I cheated a bit and used a 14 day trial of professional this has then been turned onto extract mode and published to public_ 
_Doing this without SQL wasn't for me_

_REVIEW_
* Contiains some initial notes on my initial review of the ACNC data


