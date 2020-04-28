DBMS-Project

TO Create DataBase and Person Table :

MYSQL commands :


    Create Database CMS ;
    Use  CMS ;



    Create Table Person ( 
    Aadhar_Number BIGINT CONSTRAINT TWELVE_DIGITS  CHECK (Aadhar_Number >=100000000000 and Aadhar_Number <=999999999999  )  ,
    First_Name  VARCHAR (20) ,
    Last_Name VARCHAR (20) ,
    Age INT CONSTRAINT THREE_DIGITS_MAX  CHECK (AGE >=0 and Age <=150  )  ,
    Gender VARCHAR(9) CONSTRAINT MF CHECK( Gender in (“Male”, “Female” , “others”)  ) ,
    Address_Line_1 VARCHAR(100)  ,
    City VARCHAR(30) ,
    State VARCHAR(30)  ,
    PinCode INT CONSTRAINT SIX_DIGITS  CHECK (PinCode >=100000 and PinCode <=999999  )  ,
    CONSTRAINT PERSON_PK PRIMARY KEY (Aadhar_Number)
    ) ;
