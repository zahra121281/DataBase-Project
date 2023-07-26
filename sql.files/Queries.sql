use Download_Software_System ; 


--1 Query
-- divide Users based on their gender ; 

SELECT UserName, 
  CASE gender 
    WHEN 'Male' THEN 'm'
    ELSE '-'
  END AS MALE,
  CASE gender 
    WHEN 'Female' THEN 'f'
    ELSE '-'
  END AS FEMALE
FROM dbo._User;

-- 2 Query 
-- apps which released recently ; 

SELECT _Name  , ReleaseDate 
FROM  SOFTWARE 
WHERE YEAR(ReleaseDate) = 2023 OR ( MONTH(ReleaseDate) >=6 AND YEAR(ReleaseDate) >= 2022 ) 
ORDER BY YEAR(ReleaseDate) DESC ; 

-- 3 Query
-- filter softwares based on DownloadNumber ; 

SELECT _Name  , DownloadNumber 
FROM  SOFTWARE 
ORDER BY DownloadNumber DESC ; 


-- 4 Query
-- marked apps foreach user ; 

select Regular_UName AS Regular_username
FROM marked m , SoftWare s
WHERE  m.SoftwareID = s.ID 
GROUP BY Regular_UName; 


-- Query 5 
-- filter softwares base on producer company 

SELECT Producer_Name , _NAME AS SoftWareName
FROM Software  , PRODUCER 
WHERE Software.Producer_Name = PRODUCER.Producer_UName ; 

-- Query 6 
-- CREATE VIEW 

SELECT  SoftwareName , Popularity
FROM Software_Popularity 
ORDER BY Popularity DESC ; 

SELECT _NAME AS SoftwareName  , TB.cnt 
FROM SOFTWARE , 
		( SELECT COUNT(ScoreValue) AS CNT , SoftwareID 
		FROM SCORE , SOFTWARE , _User
		WHERE _USER.UserName = Regular_UName AND _USER.Gender = 'Female'
		GROUP BY SCORE.SoftwareID  ) as TB
WHERE SOFTWARE.ID = tb.SoftwareID ; 


-- Query 7
-- comments foreach app
SELECT SoftwareID , Content
FROM COMMENT 
ORDER BY SoftwareID ; 

-- Query 8 ; 
-- filter apps based on first category 
SELECT ID , Category1
FROM SOFTWARE 
ORDER BY Category1 ;

-- Query 9:
-- suggested apps for an specifiec user ; 

SELECT DISTINCT CATEGORIES.Category , SOFTWARE._Name AS SoftwareName
FROM SOFTWARE ,
	(SELECT Download_cat.Category
	FROM 
		(SELECT Category1 as Category
		FROM DOWNLOADED
		JOIN SOFTWARE
		ON DOWNLOADED.SoftwareID = SOFTWARE.ID
		WHERE DOWNLOADED.Regular_UName = 'TaraStar' ) AS Download_cat
	JOIN SOFTWARE 
	ON  Download_cat.Category = SOFTWARE.Category1 OR Download_cat.Category = SOFTWARE.Category2

UNION 

	SELECT Marked_cat.Category
	FROM 
		(SELECT Category1 as Category
		FROM MARKED
		JOIN SOFTWARE
		ON MARKED.SoftwareID = SOFTWARE.ID
		WHERE MARKED.Regular_UName = 'TaraStar' ) AS Marked_cat
	JOIN SOFTWARE 
	ON  Marked_cat.Category = SOFTWARE.Category1 OR Marked_cat.Category = SOFTWARE.Category2) AS CATEGORIES  
WHERE CATEGORIES.Category = SOFTWARE.Category1 OR CATEGORIES.Category = SOFTWARE.Category2;



-- Query 10 :
-- filtering softwares base on searched item for user 

SELECT _NAME AS SoftwareName
FROM SOFTWARE , 
(SELECT Category1 CAT1 , Category2 CAT2 
FROM SOFTWARE 
WHERE SOFTWARE._Name LIKE 'Netflix' ) AS TUPLE
WHERE SOFTWARE.Category1  = TUPLE.CAT1 OR 
SOFTWARE.Category1  = TUPLE.CAT2 OR
SOFTWARE.Category2  = TUPLE.CAT1 OR
SOFTWARE.Category2  = TUPLE.CAT2  ; 

-- Query 11 :
-- filter free apps based on category 

SELECT _NAME AS SoftwareName , Category1 ,Category2
FROM SOFTWARE
WHERE Price = 0 
ORDER BY Category1,Category2  ; 

-- Query 12 : 
-- Most Popular Producers ; 
SELECT DISTINCT TOP(5) SOFTWARE.Producer_Name
FROM Software_Popularity , SOFTWARE
WHERE Software_Popularity.SoftwareID = SOFTWARE.ID ; 

-- Query 13 : 
-- Users which have more than 5 conected devices ; 

SELECT distinct UserName , device_cnt.cnt as Device_Count
FROM _USER , 
	(select count(Device.Device_UName) as cnt  
	from Device
	group by Device.Device_UName ) device_cnt 
WHERE device_cnt.cnt > 5 ; 

-- Query 14
-- get the number of downloaded apps from users who scored system more than 3 ; 

SELECT COUNT(DOWNLOADED.SoftwareID) AS CNT
FROM DOWNLOADED
WHERE DOWNLOADED.Regular_UName IN 
	(SELECT UserName 
	FROM CRITICS_SUGGESTIONS
	WHERE Score > 3 ) 
GROUP BY DOWNLOADED.Regular_UName ; 

-- Query 15
-- get the average sore for each app
SELECT AVG(SCORE.ScoreValue) AS Average_Score  , SOFTWARE._Name
FROM SCORE
JOIN SOFTWARE
ON SCORE.SoftwareID = SOFTWARE.ID 
GROUP BY SOFTWARE._Name
ORDER BY Average_Score DESC ;

-- Query 16 : 
-- get the number of users in each age interval 
SELECT AGE , COUNT(TB.AGE) as Count
FROM 
(SELECT dbo.GetAgeInterval(_USER.BirthDate_Year) as AGE , _User.UserName 
FROM _USER ) AS TB 
GROUP BY TB.AGE ; 


-- Query 17 : 
-- name of softwares that has been downloaded more than 10 times 

SELECT SOFTWARE._Name , COUNT_TB.COUNT
FROM SOFTWARE , 
(SELECT  DOWNLOADED.SoftwareID ,COUNT(DOWNLOADED.SoftwareID) AS COUNT
FROM DOWNLOADED
GROUP BY DOWNLOADED.SoftwareID ) AS COUNT_TB 
WHERE COUNT_TB.COUNT >= 10
ORDER BY COUNT_TB.COUNT DESC ; 



-- Query 18 
-- name of softwares that has been bought more than 5 times 
SELECT SOFTWARE._Name , COUNT_TB.COUNT
FROM SOFTWARE , 
(SELECT  BUY.SoftwareID ,COUNT(BUY.SoftwareID) AS COUNT
FROM BUY
GROUP BY BUY.SoftwareID ) AS COUNT_TB 
WHERE COUNT_TB.COUNT >= 5
ORDER BY COUNT_TB.COUNT DESC ; 


-- Query 19 
-- get recents transactions in system ; 

SELECT * FROM Transactions 
where   DAY(GETDATE())- DAY(Transactions.Buy_Time) <=2 ; 



-- Query 20 
-- Percentage of buy apps on downloaded apps 

SELECT ROUND(CAST( 
	(SELECT COUNT(BUY.SoftwareID)
	FROM BUY  ) AS FLOAT )
	/
	(SELECT COUNT(DOWNLOADED.DownloadID) 
	FROM  DOWNLOADED ) , 3)*100; 





