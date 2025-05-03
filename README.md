# GardenFriends Event Management System (Database Design)

GardenFriends is a web-based platform designed to connect members of a garden community. The system allows users to register their skills, sign up for events, and participate in a variety of gardening-related activities. The project was initially focused on skill swapping but evolved to prioritize event management after community feedback.

## Overview

This project was developed to meet the requirements of Joana Dawson, who wanted a platform where members could host, attend, and participate in various gardening events. The system was designed to handle user registrations, event creation, and management, as well as the roles of event organizers, leaders, and helpers.

### Key Features:
- **User Registration**: Members can sign up with personal details and the skills they are willing to share.
- **Event Categories**: The platform supports three event types: 
  - *Open Gardens* – guided tours of garden features.
  - *Skills and Techniques* – hands-on learning experiences.
  - *Know Your Plants* – focused education on specific plant species.
- **Event Details**: Each event includes information such as title, description, date, location (including postcode), participant instructions, and accessibility information.
- **Volunteer Helpers**: Members can volunteer as helpers for events, providing 1:1 assistance to attendees.
- **Guest Sign-Up**: Events are open to the public, with the option for non-members to sign up with basic contact details.
  
## Database Design

The project includes a well-structured database schema to store user, event, and skill information. Key features of the design:
- Users can register with their personal details and skills.
- Events have organizers, leaders, and helpers with relationships to registered users.
- Events are categorized and include accessibility and location information.


![ASSIGNMENT_2_ERD_DIAGRAM](https://github.com/user-attachments/assets/fa01496b-ac33-4192-a3be-b8063ed22ce3)


# Data Dictionary

## MEMBER Relation

| Column Name     | Brief Description                                                            | Oracle Data Type and Size | Domain (Allowable Values)                          | Default Value     | Required?              | Unique?         | Key?         |
|-----------------|-----------------------------------------------------------------------------|---------------------------|----------------------------------------------------|-------------------|------------------------|-----------------|--------------|
| **MemberID**    | The unique identifier of the member/guest.                                   | VARCHAR2(20)              | Any valid member identifier                        | No Default Value  | Yes                    | Yes             | Primary Key  |
| **MembershipType** | Describes whether the person is a member or a guest. Only two possible values. | VARCHAR2(6)               | “Member”, “Guest”                                  | No Default Value  | Yes                    | No              |              |
| **EmailAddress** | The email address of the member/guest. It is an alternate key.               | VARCHAR2(40)              | Any valid email address (should have one "@" symbol) | No Default Value  | Yes                    | Yes             | Alternate Key|
| **FirstName**    | The first name of the member/guest.                                           | VARCHAR2(40)              | Any valid name                                     | No Default Value  | Yes                    | No              |              |
| **LastName**     | The last name of the member/guest.                                            | VARCHAR2(40)              | Any valid name                                     | No Default Value  | Yes                    | No              |              |
| **StreetAddress** | The street address of the member. Applies only to members, not guests.      | VARCHAR2(80)              | Any valid street address                           | No Default Value  | Required for records where MembershipType=’Member’, to be left null for records where MembershipType=’Guest’ | No |              |
| **Suburb**       | The suburb where the member/guest lives.                                      | VARCHAR2(20)              | Any valid suburb                                   | No Default Value  | Yes                    | No              |              |
| **ContactNumber** | The contact/mobile number of the member/guest. Assumes that everyone has a unique contact number. | VARCHAR2(20) | Any valid contact number                           | No Default Value  | Yes                    | Yes             | Alternate Key|
| **Biography**    | A simple description about the member’s gardening interest. Applies only to members, not guests. | VARCHAR2(600)             | Any valid description of the member’s gardening interests | No Default Value  | Required for records where MembershipType=’Member’, to be left null for records where MembershipType=’Guest’ | No |              |




## SERVICE_CATEGORY Relation

| Column Name        | Brief Description                                           | Oracle Data Type and Size | Domain (Allowable Values)                                              | Default Value     | Required?  | Unique? | Key?        |
|--------------------|-------------------------------------------------------------|---------------------------|-----------------------------------------------------------------------|-------------------|------------|---------|-------------|
| **ServiceCategoryName** | The name of the service category                             | VARCHAR2(20)              | Any valid service category (e.g. ‘maintenance’, ‘pickup and delivery’, ‘landscaping’) | No Default Value  | Yes        | Yes     | Primary Key |
| **CategoryDescription** | The description of the service category                      | VARCHAR2(600)             | Any valid description of the service category                           | No Default Value  | Yes        | Yes     | Alternate Key |

### Remarks:
The **CategoryDescription** is also unique as no two CategoryDescription values should have the same text.



## SERVICE Relation

| Column Name        | Brief Description                                          | Oracle Data Type and Size | Domain (Allowable Values)                                              | Default Value     | Required?  | Unique? | Key?        |
|--------------------|------------------------------------------------------------|---------------------------|-----------------------------------------------------------------------|-------------------|------------|---------|-------------|
| **ServiceName**     | The name of the service                                    | VARCHAR2(50)              | Any valid service (e.g. ‘mowing’, ‘collecting plants from the nursery’, ‘paving’) | No Default Value  | Yes        | Yes     | Primary Key |
| **ServiceDescription** | The description of the service                            | VARCHAR2(600)             | Any valid description of the service provided                         | No Default Value  | Yes        | Yes     | Alternate Key |
| **ServiceCategoryName** | What category the service is under                         | VARCHAR2(20)              | Any valid category the service is under (e.g., ‘mowing’ under ‘maintenance’, ‘paving’ under ‘landscaping’) | No Default Value  | Yes        | No      | Foreign Key  |

### Foreign Key
- **ServiceCategoryName** references `SERVICE_CATEGORY (ServiceCategoryName)`
  - `ON UPDATE NO ACTION`
  - `ON DELETE NO ACTION`

### Remarks:
- The **ServiceCategoryName** should never be changed (hence **NO ACTION** on update).
- No instances in the `SERVICE_CATEGORY` relation should be deleted (hence **NO ACTION** on delete).


## MEMBER_SERVICE Relation

| Column Name         | Brief Description                                              | Oracle Data Type and Size | Domain (Allowable Values)                                  | Default Value     | Required?  | Unique? | Key?        |
|---------------------|----------------------------------------------------------------|---------------------------|-----------------------------------------------------------|-------------------|------------|---------|-------------|
| **MemberServiceID**  | The unique identifier for the service provided by the member  | VARCHAR2(20)              | Any valid identifier for the service offered by the member | No Default Value  | Yes        | Yes     | Primary Key |
| **Description**      | Detailed description of the service the member is providing    | VARCHAR2(600)             | Any valid detailed description of the service              | No Default Value  | Yes        | No      |             |
| **Conditions**       | Conditions that the requester must agree to before the service | VARCHAR2(600)             | Any valid conditions for the service                       | No Default Value  | No         | No      |             |
| **StartDate**        | Starting date when the member will be available for service    | DATE                      | Any valid starting date (must be before or equal to EndDate) | No Default Value  | No         | No      |             |
| **EndDate**          | Final date when the member will be available for service      | DATE                      | Any valid final date (must be after or equal to StartDate)  | No Default Value  | No         | No      |             |
| **Frequency**        | Frequency of the service availability                         | VARCHAR2(50)              | Valid values: ‘any Sunday’, ‘any day’, ‘by arrangement’    | No Default Value  | No         | No      |             |
| **MemberID**         | Identifier of the member providing the service                 | VARCHAR2(20)              | Any valid MemberID from the MEMBER relation                 | No Default Value  | Yes        | No      | Foreign Key |
| **ServiceName**      | The name of the service being offered                          | VARCHAR2(50)              | Any valid ServiceName from the SERVICE relation             | No Default Value  | Yes        | No      | Foreign Key |

## Foreign Keys
- **MemberID** references `MEMBER(MemberID)`
  - `ON DELETE CASCADE`
  - `ON UPDATE NO ACTION`
  
- **ServiceName** references `SERVICE(ServiceName)`
  - `ON UPDATE NO ACTION`
  - `ON DELETE NO ACTION`

### Remarks:
- **Triggers** are needed to ensure that entries in `MEMBER_SERVICE` come from members (not guests) by checking the `MEMBER` relation.
- Ensure that **either StartDate or Frequency is filled** (not null).
- If **EndDate** is filled, **StartDate must also be filled**. If **StartDate** is filled, it is not mandatory for **EndDate** to be filled.
- When both **StartDate** and **EndDate** are filled, **StartDate must be equal to or earlier than EndDate**.


## REQUEST Relation

| Column Name     | Brief Description                                                | Oracle Data Type and Size | Domain (Allowable Values)                                        | Default Value     | Required?  | Unique? | Key?        |
|-----------------|------------------------------------------------------------------|---------------------------|-----------------------------------------------------------------|-------------------|------------|---------|-------------|
| **RequestID**   | The unique identifier of the request                             | VARCHAR2(20)              | Any valid request identifier                                     | No Default Value  | Yes        | Yes     | Primary Key |
| **MemberID**    | The identifier of the member making the request                  | VARCHAR2(20)              | Any valid member identifier (must belong to a member, not a guest) | No Default Value  | Yes        | No      | Foreign Key |
| **TaskName**    | The name of the task the requester is seeking help for           | VARCHAR2(50)              | Any valid task name from the `ServiceName` in the `SERVICE` relation | No Default Value  | Yes        | No      | Foreign Key |
| **BroadCategory**| The category of service the requester is seeking                | VARCHAR2(20)              | Any valid category (e.g., ‘Maintenance’)                         | No Default Value  | Yes        | No      |             |
| **Description** | Detailed description of the service the requester is requesting  | VARCHAR2(600)             | Any valid description of the request (e.g., ‘6 overgrown citrus trees that need pruning’) | No Default Value  | Yes        | No      |             |
| **DatePosted**  | The date the request was posted on the GardenFriends website     | DATE                      | Any valid date                                                   | No Default Value  | Yes        | No      |             |
| **StartDate**   | The date when the request starts, marking the service start date | DATE                      | Any valid starting date (must be before or equal to EndDate)     | No Default Value  | No         | No      |             |
| **EndDate**     | The date when the request ends, marking the service end date     | DATE                      | Any valid ending date (must be after or equal to StartDate)      | No Default Value  | No         | No      |             |
| **UrgencyLevel**| The urgency level of the request                                 | VARCHAR2(19)              | Valid values: ‘as soon as possible’, ‘normal’                    | ‘normal’          | No         | No      |             |

### Foreign Keys
- **MemberID** references `MEMBER(MemberID)`
  - `ON DELETE CASCADE`
  - `ON UPDATE NO ACTION`

- **TaskName** references `SERVICE(ServiceName)`
  - `ON DELETE NO ACTION`
  - `ON UPDATE NO ACTION`

### Additional Notes:
- Ensure that either **UrgencyLevel = 'as soon as possible'** or **EndDate is not null** when the record is entered.
- If **StartDate** is filled, **EndDate must also be filled**. When both are filled, ensure **StartDate <= EndDate**.
- If **StartDate** is filled, check that **DatePosted <= StartDate**.
- If only **EndDate** is filled, check that **DatePosted <= EndDate**.
- Use a **trigger** to check if the member has an existing service in the `MEMBER_SERVICE` relation before making a request.
- Use triggers to ensure requests are only made by members, not guests.

## EVENT Relation

| Column Name             | Brief Description                                              | Oracle Data Type and Size | Domain (Allowable Values)                                                    | Default Value     | Required?  | Unique? | Key?        |
|-------------------------|----------------------------------------------------------------|---------------------------|-----------------------------------------------------------------------------|-------------------|------------|---------|-------------|
| **EventID**             | The identifier of the event that allows us to uniquely identify a particular event | VARCHAR2(20)              | Any valid event identifier                                                   | No Default Value  | Yes        | Yes     | Primary Key |
| **Title**               | The title of the event                                        | VARCHAR2(50)              | Any valid event title                                                        | No Default Value  | Yes        | No      |             |
| **EventCategory**       | The type of event that is organised                           | VARCHAR2(3)               | ‘OG’, ‘ST’, or ‘KYP’                                                         | No Default Value  | Yes        | No      |             |
| **Description**         | A detailed description of the event that is organised         | VARCHAR2(600)             | Any valid event description                                                   | No Default Value  | Yes        | No      |             |
| **EventDate**           | The date the event is held                                    | DATE                      | Any valid date                                                                | No Default Value  | Yes        | No      |             |
| **Location**            | The place where the event is held                              | VARCHAR2(30)              | Any valid location                                                           | No Default Value  | Yes        | No      |             |
| **Suburb**              | The suburb where the event is held                            | VARCHAR2(20)              | Any valid suburb                                                             | No Default Value  | Yes        | No      |             |
| **PlacesAvailable**     | The maximum number of people that can take part in the event (Maximum number of attendees, where helpers are excluded) | NUMBER(6,0)              | Any number between 1 and 999999 (inclusive), excluding negative or zero values | No Default Value  | Yes        | No      |             |
| **LocationPostcode**    | The postcode of the event location                            | CHAR(6)                   | Any valid postcode (assuming length of postcode is 6 characters)             | No Default Value  | Yes        | No      |             |
| **EventInstructions**   | Instructions given out to the participants of the event       | VARCHAR2(600)             | Any valid event instructions                                                  | No Default Value  | No         | No      |             |
| **MeetAccessibilityGuidelines** | States whether the event meets accessibility guidelines for people in wheelchairs or with limited mobility | VARCHAR(3)               | Only two values: ‘Yes’, ‘No’                                                 | No Default Value  | Yes        | No      |             |
| **OrganiserID**         | The identifier of the member who organises the event          | VARCHAR2(20)              | Any valid member identifier (must ensure it belongs to a member, not a guest) | No Default Value  | Yes        | No      | Foreign Key |
| **LeaderID**            | The identifier of the member who presents the event on the event day | VARCHAR2(20)              | Any valid member identifier (must ensure it belongs to a member, not a guest) | No Default Value  | Yes        | No      | Foreign Key |

### Foreign Keys
- **OrganiserID** references `MEMBER(MemberID)`
  - `ON UPDATE NO ACTION`
  - `ON DELETE NO ACTION`

- **LeaderID** references `MEMBER(MemberID)`
  - `ON UPDATE NO ACTION`
  - `ON DELETE NO ACTION`

### Additional Notes:
- Ensure that **OrganiserID** and **LeaderID** belong to members and not to guests by using triggers.
- **EventCategory**:  
  - ‘OG’ stands for **Open Gardens**  
  - ‘ST’ stands for **Skills and Techniques**  
  - ‘KYP’ stands for **Know Your Plants**


## EVENT_PARTICIPATION Relation

| Column Name        | Brief Description                                                                 | Oracle Data Type and Size | Domain (Allowable Values)                                                          | Default Value     | Required?  | Unique? | Key?        |
|--------------------|-----------------------------------------------------------------------------------|---------------------------|------------------------------------------------------------------------------------|-------------------|------------|---------|-------------|
| **EventID**        | The identifier of the event that allows us to uniquely identify a particular event | VARCHAR2(20)              | Any valid event identifier                                                         | No Default Value  | Yes        | No      | Part of Primary Key |
| **MemberID**       | The identifier of the member/guest who is participating in the event. The organiser or leader’s MemberID of a particular event must not be a participant of that event he/she is organising/leading. | VARCHAR2(20)              | The identifier of the member/guest who is participating                            | No Default Value  | Yes        | No      | Part of Primary Key |
| **ParticipationType** | The type of participation in the event. Only two possible values: ‘Attendee’ or ‘Helper’. Only members can be ‘Helper’, but both guests and members can be ‘Attendee’. | VARCHAR2(8)               | ‘Attendee’ OR ‘Helper’ (only members can be ‘Helper’)                             | No Default Value  | Yes        | No      |             |

### Foreign Keys
- **EventID** references `EVENT(EventID)`
  - `ON DELETE CASCADE`
  - `ON UPDATE NO ACTION`

- **MemberID** references `MEMBER(MemberID)`
  - `ON DELETE CASCADE`
  - `ON UPDATE NO ACTION`

### Additional Notes:
- **EventID**:  
  If the event is removed, the record will be removed since it is illogical to participate in a non-existent event. This is why `ON DELETE CASCADE` is implemented.  
  `ON UPDATE NO ACTION` is used because the EventID should never be changed.

- **MemberID**:  
  If a person is no longer a member/guest, they should no longer be a participant of the event. This is why `ON DELETE CASCADE` is implemented.  
  `ON UPDATE NO ACTION` is used because the MemberID should never be changed.

- **ParticipationType**:  
  There are only two possible values: 'Attendee' and 'Helper'.  
  Only members can be 'Helper', and both guests and members can be 'Attendee'.  
  Use triggers to ensure that only members are helpers (by checking against the `MEMBER` relation).  
  Use triggers to ensure helpers are not organisers or leaders (by checking against the `EVENT` relation).

