SELECT `Charity Name`, 
		MAX(CASE 
			WHEN `General Community Australia` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'General community in Australia')
            WHEN `Adults 25 to under 65` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Adults -25 tunder 65')
            WHEN `Females` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Females')
            WHEN `Males` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Males')
            WHEN `People with Chronic or Terminal Illness` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People with chronic illness (including terminal) (âPeople with chronic or terminal illness)')
             WHEN `Families` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Families')
            WHEN `People with Disabilities` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People with disabilities')
            WHEN `Adults - 65 and over` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Adults â 65 and over')
            WHEN `Youth 15 - under 25` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Youth â 15 tunder 25')
            WHEN `Children 6 - under 15` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Children â 6 tunder 15')
            WHEN `Victims of Disasters` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Victims of disasters')
            WHEN `Financially disadvantaged people` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Financially disadvantaged people')
            WHEN `People in rural/regional/remote communities` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People in rural/regional/remote communities')
            WHEN `Migrants Refugees or Asylum Seekers` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Migrants, refugees or asylum seekers')
            WHEN `Early Childhood under 6` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Early childhood â under 6')
            WHEN `Unemployed Persons` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Unemployed persons')
            WHEN `GLBTI` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Gay, lesbian, bisexual, transgender or intersex persons (GLBTI)')
            WHEN `Victims of crime` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Victims of crime (including family violence) (âVictims of crimeâ)')
            WHEN `Veterans or their families` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Veterans and/or their families (âVeterans or their familiesâ)')
            WHEN `People at risk of homelessness` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People at risk of homelessness/people experiencing homelessness (âPeople at risk of homelessnessâ)')
            WHEN `ATSI` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Aboriginal and Torres Strait Islander people (ATSI)')	
			WHEN `Pre or Post Release Offenders and Families` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real) / CAST(24190907 as real)) as FACTOR 
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Pre/post release offenders and/or their families (âPre or Post Release Offenders and Familiesâ)')
         	ELSE 0
            END ) AS APPLIED_POP_FACTOR
			
		,MAX(CASE 
			WHEN `General Community Australia` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'General community in Australia')
            WHEN `Adults 25 to under 65` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Adults -25 tunder 65')
            WHEN `Females` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Females')
            WHEN `Males` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Males')
            WHEN `People with Chronic or Terminal Illness` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People with chronic illness (including terminal) (âPeople with chronic or terminal illness)')
             WHEN `Families` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Families')
            WHEN `People with Disabilities` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People with disabilities')
            WHEN `Adults - 65 and over` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Adults â 65 and over')
            WHEN `Youth 15 - under 25` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Youth â 15 tunder 25')
            WHEN `Children 6 - under 15` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Children â 6 tunder 15')
            WHEN `Victims of Disasters` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Victims of disasters')
            WHEN `Financially disadvantaged people` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Financially disadvantaged people')
            WHEN `People in rural/regional/remote communities` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People in rural/regional/remote communities')
            WHEN `Migrants Refugees or Asylum Seekers` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Migrants, refugees or asylum seekers')
            WHEN `Early Childhood under 6` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Early childhood â under 6')
            WHEN `Unemployed Persons` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Unemployed persons')
            WHEN `GLBTI` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Gay, lesbian, bisexual, transgender or intersex persons (GLBTI)')
            WHEN `Victims of crime` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Victims of crime (including family violence) (âVictims of crimeâ)')
            WHEN `Veterans or their families` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Veterans and/or their families (âVeterans or their familiesâ)')
            WHEN `People at risk of homelessness` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'People at risk of homelessness/people experiencing homelessness (âPeople at risk of homelessnessâ)')
            WHEN `ATSI` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Aboriginal and Torres Strait Islander people (ATSI)')	
			WHEN `Pre or Post Release Offenders and Families` = 'y' THEN 
							(SELECT (
									CAST(`2016` as real)) AS POPULATION  
							 FROM ABS_MANUAL_MERGE
							 Where `POPULATION FACTORS` = 'Pre/post release offenders and/or their families (âPre or Post Release Offenders and Familiesâ)')
         	ELSE 0
            END ) AS MAX_POPULATION
			
FROM ACNC_Ungrouped
GROUP BY `Charity Name`
							
									
								