use Download_Software_System;
/*


-- functions 
GO
CREATE FUNCTION dbo.ConvertToSolarYear(@christian_year INT)
RETURNS VARCHAR(10)
AS
BEGIN
    DECLARE @solar_year_start DATE = CAST(CAST(@christian_year AS VARCHAR) + '-03-21' AS DATE);
    DECLARE @solar_year_end DATE = DATEADD(YEAR, 1, @solar_year_start);
    DECLARE @solar_year VARCHAR(10) = CONVERT(VARCHAR(4), @christian_year - 621) + '/' + CONVERT(VARCHAR(4), YEAR(@solar_year_end) - 622);
    RETURN  TRY_CAST( @solar_year AS bigint ) ;
END;	


GO
CREATE FUNCTION dbo.GetAgeInterval (@age INT)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @interval VARCHAR(20)
    DECLARE @year bigint
    DECLARE @NOW datetime = GETDATE()
    SET @year = YEAR(@NOW) - 621 
	SET @interval = 
        CASE 
            WHEN @year-@age < 18 THEN 'Child'
            WHEN @year-@age BETWEEN 18 AND 64 THEN 'Adult'
            WHEN @year-@age >= 65 THEN 'Senior'
            ELSE 'Unknown'
        END
	return @interval 
END ; 


-- create tables 

CREATE TABLE _User
(
	UserName              VARCHAR(25)    NOT NULL,
	BalanceNumber         FLOAT			 DEFAULT 0,
	BalanceCurrency       VARCHAR(10)    NOT NULL   DEFAULT 'Rial',
	Email                 VARCHAR(50),
	_Password             VARCHAR(33)	 NOT NULL,
	Gender                BIT            NOT NULL,
	BirthDate_Day         INT            NOT NULL,
	BirthDate_Month       INT            NOT NULL,
	BirthDate_Year        INT            NOT NULL,
	PhoneNumber           VARCHAR(11)    NOT NULL,
	PRIMARY KEY(UserName),
	CONSTRAINT check_user_Bdate CHECK
	(
		(BirthDate_Day BETWEEN 1 AND 31)
	AND
		(BirthDate_Month BETWEEN 1 AND 12)
	AND
		(dbo.ConvertToSolarYear(YEAR(GETDATE())) - BirthDate_Year BETWEEN 9 AND 90)
	),
	CONSTRAINT check_user_name CHECK
	(
		(UserName LIKE '[A-Za-z]%[A-Za-z]') OR (UserName LIKE '[0-9]')
	),
	CONSTRAINT check_user_password CHECK
	(
		
		_Password LIKE '%[0-9]%'
		AND 
		_Password LIKE '%[A-Z]%'
		AND 
		_Password LIKE '%[a-z]%'
		AND 
		LEN(_Password) >= 8
	),
	CONSTRAINT check_user_phone_number CHECK
	(
		PhoneNumber LIKE '09[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
	),
)



CREATE TABLE PRODUCER
(
	Producer_UName				VARCHAR(25)    NOT NULL,
	PRIMARY KEY(Producer_UName) ,
	FOREIGN KEY(Producer_UName) REFERENCES _USER(UserName)
		ON DELETE CASCADE ON UPDATE CASCADE,
)

CREATE TABLE REGULAR
(
	Regular_UName				VARCHAR(25)    NOT NULL,
	PRIMARY KEY(Regular_UName),
	FOREIGN KEY(Regular_UName) REFERENCES _USER(UserName)
		ON DELETE CASCADE ON UPDATE CASCADE,
)



CREATE TABLE SOFTWARE
(
	ID                INT              NOT NULL,	
	_Name             VARCHAR(25)      NOT NULL,
	Producer_Name     VARCHAR(25)      NOT NULL,
	Explanation       VARCHAR(1000),
	Price			  INT              DEFAULT 0,
	Currency          VARCHAR(10)      DEFAULT 'Rial',
	Capacity          INT			   NOT NULL,
	Picture           VARBINARY(MAX), 
	ReleaseDate       DATE             NOT NULL,
	OperatingSystem   VARCHAR(10)      NOT NULL,    
	_Version          VARCHAR(10)      NOT NULL,
	DownloadNumber    INT              DEFAULT 0,
	Category1         VARCHAR(25)      NOT NULL,
	--Category2         VARCHAR(25),
	PRIMARY KEY(ID),
	FOREIGN KEY (Producer_Name) REFERENCES PRODUCER (Producer_UName),
	CONSTRAINT check_Name CHECK
	(
		_NAME  LIKE '%[A-Za-z۰-۹آ-ی]%'
	),
	CONSTRAINT check_OperatingSystem CHECK
	(
		( UPPER(OperatingSystem) LIKE 'IOS'  OR LOWER(OperatingSystem) LIKE 'android' )
	),
	CONSTRAINT check_price CHECK
	(
		Price >=0
	),
	CONSTRAINT check_picture_size check
	( 
		DATALENGTH( picture) BETWEEN 0 AND 500000  -- 500kb 
	),
	CONSTRAINT check_category CHECK 
	(
		category1 IN 
		(
			'TOOLS','FINANCIAL','BOOK','PERSONALIZATION','FITNESS','PHOTOGRAPHY','SHOPPING','PRESS',
			'MEDICAL','VIDEOGRAPHY','COMMUNICATION','RELIGIOUS','ENTERTAINMENT'
			,'JUNIORS','SOCIALMEDIA','MUSIC','RESTAURANT','WEATHER'
		)	 
	),
	CONSTRAINT check_releasedate CHECK
	(
		YEAR(ReleaseDate ) >= 2015  
	)
) ;



CREATE TABLE Device
(
	ID                 INT           NOT NULL,
	Device_UName       VARCHAR(25)   NOT NULL,
	EntryDate          DATE          NOT NULL,
	Device_name		   VARCHAR(25)   NOT NULL,
	PRIMARY KEY(ID),
	FOREIGN KEY(Device_UName) REFERENCES _USER(UserName)
		ON DELETE CASCADE ON UPDATE CASCADE,
);


CREATE TABLE COMMENT
(
	ID               INT           NOT NULL,
	UserName         VARCHAR(25)   NOT NULL,
	SoftwareID       INT           NOT NULL,
	Content          VARCHAR(250)  NOT NULL,
	Date_Time        DATETIME      DEFAULT GETDATE(),
	ReplyID          INT,
	
	PRIMARY KEY(ID),
	FOREIGN KEY(UserName) REFERENCES _User(UserName)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY(SoftwareID) REFERENCES SOFTWARE(ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT check_content_length CHECK
	(
		LEN(Content) >= 5 
	)
)


CREATE TABLE CRITICS_SUGGESTIONS
(
	ID            INT			  NOT NULL,
	Content       VARCHAR(1000)   NOT NULL,
	Score         INT,
	UserName      VARCHAR(25)     NOT NULL,
	PRIMARY KEY(ID) ,
	FOREIGN KEY(UserName) REFERENCES _User(UserName)
		ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT  check_score CHECK 
	(
		Score BETWEEN 1 AND 5
	)
)

CREATE TABLE MARKED
(
	Regular_UName    VARCHAR(25)   NOT NULL,
	SoftwareID       INT           NOT NULL,
	
	PRIMARY KEY(Regular_UName,SoftwareID),
	FOREIGN KEY(Regular_UName) REFERENCES REGULAR(Regular_UName)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY(SoftwareID) REFERENCES SOFTWARE(ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	
)


CREATE TABLE BUY
(
	Regular_UName    VARCHAR(25)   NOT NULL,
	SoftwareID       INT           NOT NULL,
	
	PRIMARY KEY(Regular_UName,SoftwareID),
	FOREIGN KEY(Regular_UName) REFERENCES REGULAR(Regular_UName)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY(SoftwareID) REFERENCES SOFTWARE(ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
);



CREATE TABLE DOWNLOADED
(
	Regular_UName    VARCHAR(25)   NOT NULL,
	SoftwareID       INT           NOT NULL,
	DownloadID       INT           NOT NULL,
	
	PRIMARY KEY(Regular_UName,SoftwareID,DownloadID),
	FOREIGN KEY(Regular_UName) REFERENCES REGULAR(Regular_UName)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY(SoftwareID) REFERENCES SOFTWARE(ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
)

CREATE TABLE SCORE
(
	ScoreValue		 INT           NOT NULL ,
	Regular_UName    VARCHAR(25)   NOT NULL,
	SoftwareID       INT           NOT NULL,
	
	PRIMARY KEY(Regular_UName,SoftwareID),
	FOREIGN KEY(Regular_UName) REFERENCES REGULAR(Regular_UName)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	FOREIGN KEY(SoftwareID) REFERENCES SOFTWARE(ID)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT check_value CHECK
	(
		ScoreValue BETWEEN 1 AND 5
	),
)



-- add columns

ALTER TABLE BUY 
ADD Buy_Time DATETIME DEFAULT  GETDATE() ;


ALTER TABLE SOFTWARE 
ADD Category2 VARCHAR(25) ;  


ALTER TABLE SOFTWARE 
ADD TotalScore BIGINT DEFAULT 0 ; 


-- Add Constraints 


ALTER TABLE _User
ADD CONSTRAINT check_Email  CHECK
(
	Email LIKE '%_@%.%'
);



ALTER TABLE SOFTWARE
ADD CONSTRAINT check_capacity CHECK
(
	Capacity  BETWEEN  1 AND 2500000000
);



ALTER TABLE COMMENT
ADD CONSTRAINT check_replyID CHECK 
(
	replyID != ID 
) ; 

-- delete constraint ;

ALTER TABLE COMMENT 
DROP CONSTRAINT check_content_length ; 

 

ALTER TABLE SOFTWARE 
DROP CONSTRAINT check_releasedate ;

-- update constraint 


ALTER TABLE SOFTWARE
DROP CONSTRAINT check_category ; 


ALTER TABLE SOFTWARE
ADD CONSTRAINT check_category CHECK 
(
	(
		category1 IN 
		(
			'TOOLS','FINANCIAL','BOOK','PERSONALIZATION','FITNESS','PHOTOGRAPHY','SHOPPING','PRESS',
			'MEDICAL','VIDEOGRAPHY','COMMUNICATION','RELIGIOUS','ENTERTAINMENT'
			,'JUNIORS','SOCIALMEDIA','MUSIC','RESTAURANT','WEATHER','SPORT'
		) 
		OR 
		category2 IN 
		(
			'TOOLS','FINANCIAL','BOOK','PERSONALIZATION','FITNESS','PHOTOGRAPHY','SHOPPING','PRESS',
			'MEDICAL','VIDEOGRAPHY','COMMUNICATION','RELIGIOUS','ENTERTAINMENT'
			,'JUNIORS','SOCIALMEDIA','MUSIC','RESTAURANT','WEATHER','SPORT'
		)
	)	
	AND 
	(category1 != category2 ) 
);


ALTER TABLE _USER
DROP CONSTRAINT check_user_name ; 


ALTER TABLE _USER
ADD CONSTRAINT check_user_name CHECK (UserName LIKE '%[A-Za-z0-9]%');

-- Create Procedure 

GO
CREATE PROCEDURE UpdateCategory2
    @cat1 VARCHAR(25),
    @cat2 VARCHAR(25)
AS
BEGIN
   
	UPDATE SOFTWARE
	SET Category2 = @cat2 
	WHERE Category1 = @cat1;

END 

go
CREATE PROCEDURE InsertIntoMarkedTable
    @Regular_UName VARCHAR(25),
    @SoftwareID INT
AS
BEGIN
    INSERT INTO MARKED (Regular_UName, SoftwareID)
    VALUES (@Regular_UName, @SoftwareID);
END



--- Trigger 

GO
CREATE OR ALTER TRIGGER tr_buy_software
ON BUY
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @v_price INT;
	 -- Get the inserted values from the INSERTED table
	  DECLARE @regual_uname varchar(25), @softwareID INT
	  SELECT @regual_uname = INSERTED.Regular_UName, @softwareID = INSERTED.SoftwareID 
	  FROM INSERTED ; 
    -- Retrieve the price of the software
	SELECT @v_price = Price FROM Software WHERE ID = @softwareID;

    -- Check if the user has enough balance to buy the software
    IF EXISTS (SELECT 1 FROM _User WHERE UserName = @regual_uname AND BalanceNumber >= @v_price)
    BEGIN
        -- Deduct the price from the user's balance
        UPDATE _User SET BalanceNumber = BalanceNumber - @v_price WHERE UserName = @regual_uname ;

        -- Add the price to the producer's account
        UPDATE _USER SET _USER.BalanceNumber = _USER.BalanceNumber + @v_price WHERE _USER.UserName = (
            SELECT Producer_Name FROM Software WHERE ID = @softwareID
        );
		-- insert the new value to table after validation ; 
		INSERT INTO BUY
		(Regular_UName,SoftwareID)
		VALUES
		(@regual_uname , @softwareID) ; 
    END
    ELSE
    BEGIN
        -- Raise an error if the user doesn't have enough balance
        RAISERROR('Insufficient balance.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;



GO
CREATE OR ALTER TRIGGER tr_download_software
ON DOWNLOADED
AFTER INSERT
AS
BEGIN
    DECLARE @v_price INT;
	DECLARE @regual_uname varchar(25), @softwareID INT
	SELECT @regual_uname = INSERTED.Regular_UName, @softwareID = INSERTED.SoftwareID 
	FROM INSERTED ; 
    IF EXISTS (SELECT 1 FROM _User WHERE UserName = @regual_uname )
    BEGIN
        UPDATE SOFTWARE SET DownloadNumber = DownloadNumber +1 WHERE ID = @softwareID
    END
    ELSE
    BEGIN
        RAISERROR('NOT RECOGNIZED USER', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;


GO
CREATE OR ALTER TRIGGER tr_delete_download_software
ON DOWNLOADED
AFTER DELETE
AS
BEGIN
    DECLARE @v_price INT;
	DECLARE @regual_uname varchar(25), @softwareID INT
	SELECT @regual_uname = DELETED.Regular_UName, @softwareID = DELETED.SoftwareID 
	FROM DELETED ; 
    IF EXISTS (SELECT 1 FROM _User WHERE UserName = @regual_uname )
    BEGIN
        UPDATE SOFTWARE SET DownloadNumber = DownloadNumber -1 WHERE ID = @softwareID
    END
    ELSE
    BEGIN
        RAISERROR('NOT RECOGNIZED USER', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;



GO
CREATE OR ALTER TRIGGER tr_score_software
ON SCORE
AFTER INSERT
AS
BEGIN
  --  DECLARE @v_price INT;
	DECLARE @regual_uname varchar(25), @softwareID INT , @scoreValue INT 
	SELECT @regual_uname = INSERTED.Regular_UName, @softwareID = INSERTED.SoftwareID , @scoreValue = INSERTED.ScoreValue 
	FROM INSERTED ; 
    IF (EXISTS (SELECT 1 FROM _User WHERE UserName = @regual_uname )) AND (EXISTS ( SELECT 1 FROM SOFTWARE WHERE ID = @softwareID ))  
    BEGIN
		
        UPDATE SOFTWARE SET SOFTWARE.TotalScore = SOFTWARE.TotalScore + @scoreValue WHERE ID = @softwareID
    END
    ELSE
    BEGIN
        RAISERROR('NOT RECOGNIZED USER', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;


GO
CREATE OR ALTER TRIGGER tr_update_score_software
ON SCORE
INSTEAD OF UPDATE
AS
BEGIN
	DECLARE @regual_uname varchar(25), @softwareID INT , @scoreValue INT , @previousValue INT
	SELECT @regual_uname = INSERTED.Regular_UName, @softwareID = INSERTED.SoftwareID , @scoreValue = INSERTED.ScoreValue 
	FROM INSERTED ; 
    IF (EXISTS (SELECT 1 FROM _User WHERE UserName = @regual_uname )) AND (EXISTS ( SELECT 1 FROM SOFTWARE WHERE ID = @softwareID ))  
    BEGIN		
		SELECT @previousValue = SCORE.ScoreValue 
		FROM SCORE 
		WHERE SCORE.SoftwareID = @softwareID AND SCORE.Regular_UName = @regual_uname; 
		UPDATE SOFTWARE SET SOFTWARE.TotalScore = SOFTWARE.TotalScore - @previousValue WHERE ID = @softwareID
        UPDATE SOFTWARE SET SOFTWARE.TotalScore = SOFTWARE.TotalScore + @scoreValue WHERE ID = @softwareID

		-- UPDATE THE NEW VALUE
		UPDATE SCORE    
		SET SCORE.ScoreValue = @scoreValue 
		WHERE SCORE.SoftwareID = @softwareID AND SCORE.Regular_UName = @regual_uname; 
    END
    ELSE
    BEGIN
        RAISERROR('NOT RECOGNIZED USER', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;


GO
CREATE OR ALTER TRIGGER tr_delete_score_software
ON SCORE
AFTER DELETE
AS
BEGIN
	DECLARE @regual_uname varchar(25), @softwareID INT , @scoreValue INT , @previousValue INT
	SELECT @regual_uname = DELETED.Regular_UName, @softwareID = DELETED.SoftwareID , @scoreValue = DELETED.ScoreValue 
	FROM DELETED ; 
    IF (EXISTS (SELECT 1 FROM _User WHERE UserName = @regual_uname )) AND (EXISTS ( SELECT 1 FROM SOFTWARE WHERE ID = @softwareID ))  
    BEGIN		
		SELECT @previousValue = SCORE.ScoreValue 
		FROM SCORE 
		WHERE SCORE.SoftwareID = @softwareID AND SCORE.Regular_UName = @regual_uname; 
		UPDATE SOFTWARE SET SOFTWARE.TotalScore = SOFTWARE.TotalScore - @previousValue WHERE ID = @softwareID
    END
    ELSE
    BEGIN
        RAISERROR('NOT RECOGNIZED USER', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;


-- create views

GO
CREATE VIEW Software_Popularity AS 
SELECT _NAME AS SoftwareName , ROUND( DownloadNumber*average.AVERAGE/10 , 2) AS Popularity , ID AS SoftwareID 
FROM SOFTWARE ,(SELECT AVG(ScoreValue)  AS AVERAGE , SoftwareID
		FROM SCORE , SOFTWARE
		GROUP BY SCORE.SoftwareID ) as average
WHERE SOFTWARE.ID = average.SoftwareID ; 


GO
CREATE VIEW Transactions AS 
SELECT  _Name AS SoftwareName , Producer_Name,PRICE , BUY_TIME
FROM BUY
INNER JOIN SOFTWARE ON BUY.SoftwareID = SOFTWARE.ID
*/
