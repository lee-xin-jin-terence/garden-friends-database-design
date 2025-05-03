CREATE TABLE MEMBER(

MemberID  VARCHAR2(20) ,
MembershipType  VARCHAR2(6)  NOT NULL,
EmailAddress VARCHAR2(40) NOT NULL,
FirstName  VARCHAR2(40) NOT NULL,
LastName  VARCHAR2(40)  NOT NULL,
StreetAddress VARCHAR2(80) NULL ,
Suburb VARCHAR2(20) NOT NULL ,
ContactNumber VARCHAR2(20) NOT NULL ,
Biography VARCHAR2(600) NULL ,

CONSTRAINT MEMBER_PK
PRIMARY KEY(MemberID), 

CONSTRAINT MEMBER_Email_Address_AK
UNIQUE (EmailAddress) ,

CONSTRAINT MEMBER_Email_Address_CHECK
CHECK (EmailAddress LIKE '_%@%_' ),

CONSTRAINT MEMBER_MembershipType_CHECK
CHECK (MembershipType IN ('Member', 'Guest' )),

CONSTRAINT MEMBER_StreetAddress_CHECK
CHECK (  ( MembershipType ='Member' AND StreetAddress IS NOT NULL) 
OR
( MembershipType='Guest' AND StreetAddress IS NULL)   ),

CONSTRAINT MEMBER_Contact_AK
UNIQUE(ContactNumber),

CONSTRAINT MEMBER_Biography_CHECK
CHECK(  ( MembershipType ='Member' AND Biography IS NOT NULL)
OR
(MembershipType='Guest' AND Biography IS NULL) ) 
);
/*------------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE SERVICE_CATEGORY(

ServiceCategoryName  VARCHAR2(20) ,
CategoryDescription  VARCHAR2(600) NOT NULL,

CONSTRAINT SERVICE_CATEGORY_PK
PRIMARY KEY(ServiceCategoryName),

CONSTRAINT SERVICE_CATEGORY_AK
UNIQUE(CategoryDescription)
);
/*------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE SERVICE(

ServiceName VARCHAR2(50) ,
ServiceDescription VARCHAR2(600)  NOT NULL,
ServiceCategoryName VARCHAR2(20) NOT NULL,

CONSTRAINT SERVICE_PK
PRIMARY KEY(ServiceName),

CONSTRAINT SERVICE_FK
FOREIGN KEY (ServiceCategoryName) REFERENCES
SERVICE_CATEGORY(ServiceCategoryName),

CONSTRAINT SERVICE_AK
UNIQUE(ServiceDescription)
);
/*-----------------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE MEMBER_SERVICE(

MemberServiceID VARCHAR2(20)  ,
Description VARCHAR2(600) NOT NULL,
Conditions VARCHAR2(600) NULL,
StartDate DATE  NULL,
EndDate DATE NULL,
Frequency VARCHAR2(50) NULL,
MemberID VARCHAR2(20) NOT NULL,
ServiceName VARCHAR2(50) NOT NULL,

CONSTRAINT MEMBER_SERVICE_PK
PRIMARY KEY( MemberServiceID), 

CONSTRAINT MEMBER_SERVICE_FK1
FOREIGN KEY (MemberID)  REFERENCES
MEMBER(MemberID)
ON DELETE CASCADE,

CONSTRAINT MEMBER_SERVICE_FK2
FOREIGN KEY (ServiceName) REFERENCES
SERVICE(ServiceName),

CONSTRAINT MEMBER_SERVICE_NULL_CHECK
CHECK (( StartDate IS NOT NULL  )
          OR
      (Frequency IS NOT NULL)),

CONSTRAINT MEMBER_SERVICE_DATE_CHECK
CHECK (  (EndDate IS NULL AND StartDate IS NULL)
                 OR
(EndDate IS NULL AND StartDate IS NOT NULL)
                OR
               (EndDate IS NOT NULL AND StartDate IS NOT NULL AND StartDate<=EndDate))
);

/*--------------------------------------------------------------------------------------------------------------*/


CREATE TABLE REQUEST(

RequestID VARCHAR2(20),
MemberID VARCHAR2(20) NOT NULL ,
TaskName VARCHAR2(50) NOT NULL , 
BroadCategory VARCHAR2(20) NOT NULL ,
Description VARCHAR2(600) NOT NULL,
DatePosted DATE NOT NULL,
StartDate DATE  NULL, 
EndDate DATE NULL, 
UrgencyLevel VARCHAR2(19) default 'normal'  ,

CONSTRAINT REQUEST_PK
PRIMARY KEY(RequestID),

CONSTRAINT REQUEST_FK1
FOREIGN KEY (MemberID) REFERENCES
MEMBER(MemberID) 
ON DELETE CASCADE,

CONSTRAINT REQUEST_FK2
FOREIGN KEY (TaskName) REFERENCES
SERVICE(ServiceName),

CONSTRAINT REQUEST_Date_CHECK
CHECK ( (StartDate IS NULL AND EndDate IS NOT NULL AND DatePosted <=EndDate)
               OR
              (StartDate IS NULL AND EndDate IS NULL )
              OR
(StartDate IS NOT NULL AND EndDate IS NOT NULL AND StartDate <= EndDate AND DatePosted  <= StartDate)),

CONSTRAINT REQUEST_Frequency_CHECK
CHECK ( UrgencyLevel IN ('normal' , 'as soon as possible')),

CONSTRAINT REQUEST_Freq_Date_CHECK
CHECK ((EndDate IS NOT NULL)
                OR
(UrgencyLevel = 'as soon as possible'))

);

/*----------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE EVENT(

EventID VARCHAR2(20) ,
Title VARCHAR2(50) NOT NULL,
EventCategory VARCHAR2(3) NOT NULL,
Description VARCHAR2(600) NOT NULL,
EventDate DATE NOT NULL, 
Location VARCHAR2(30) NOT NULL,
Suburb VARCHAR2(20) NOT NULL,
PlacesAvailable Number(6,0) NOT NULL,
LocationPostcode CHAR(6) NOT NULL, 
EventInstructions VARCHAR2(600) NULL,
MeetAccessibilityGuidelines VARCHAR(3) NOT NULL, 
OrganiserID VARCHAR2(20) NOT NULL,
LeaderID VARCHAR2(20) NOT NULL,

CONSTRAINT EVENT_PK
PRIMARY KEY(EventID),

CONSTRAINT EVENT_FK1
FOREIGN KEY(OrganiserID)
REFERENCES MEMBER(MemberID),

CONSTRAINT EVENT_FK2
FOREIGN KEY(LeaderID)
REFERENCES MEMBER(MemberID),

CONSTRAINT EVENT_EventCategory_CHECK
CHECK (EventCategory IN ('OG', 'ST', 'KYP')),

CONSTRAINT EVENT_PlacesAvailable_CHECK
CHECK (PlacesAvailable > 0 ),

CONSTRAINT EVENT_MeetAccessibility_CHECK 
CHECK ( MeetAccessibilityGuidelines IN ( 'Yes', 'No' ))

);
/*------------------------------------------------------------------------------------------------------------------------*/


CREATE TABLE EVENT_PARTICIPATION(

EventID VARCHAR2(20) NOT NULL,
MemberID VARCHAR2(20) NOT NULL,
ParticipationType VARCHAR2(8) NOT NULL,

CONSTRAINT EVENT_PART_PK
PRIMARY KEY (EventID, MemberID), 

CONSTRAINT EVENT_PART_FK1
FOREIGN KEY(MemberID)
REFERENCES MEMBER(MemberID)
ON DELETE CASCADE,

CONSTRAINT EVENT_PART_FK2
FOREIGN KEY(EventID)
REFERENCES EVENT(EventID)
ON DELETE CASCADE,


CONSTRAINT EVENT_PART_Participation_CHECK
CHECK ( ParticipationType IN ('Attendee' , 'Helper' )  )

);
