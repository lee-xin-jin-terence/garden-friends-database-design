# GardenFriends Event Management System

GardenFriends is a web-based platform designed to connect members of a garden community. The system allows users to register their skills, sign up for events, and participate in a variety of gardening-related activities. The project was initially focused on skill swapping but evolved to prioritize event management after community feedback.

## Overview

This project was developed to meet the requirements of Astrid Winterblossom, who wanted a platform where members could host, attend, and participate in various gardening events. The system was designed to handle user registrations, event creation, and management, as well as the roles of event organizers, leaders, and helpers.

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


## Data Dictionary

### MEMBER Relation

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




### SERVICE_CATEGORY Relation

| Column Name        | Brief Description                                           | Oracle Data Type and Size | Domain (Allowable Values)                                              | Default Value     | Required?  | Unique? | Key?        |
|--------------------|-------------------------------------------------------------|---------------------------|-----------------------------------------------------------------------|-------------------|------------|---------|-------------|
| **ServiceCategoryName** | The name of the service category                             | VARCHAR2(20)              | Any valid service category (e.g. ‘maintenance’, ‘pickup and delivery’, ‘landscaping’) | No Default Value  | Yes        | Yes     | Primary Key |
| **CategoryDescription** | The description of the service category                      | VARCHAR2(600)             | Any valid description of the service category                           | No Default Value  | Yes        | Yes     | Alternate Key |

### Remarks:
The **CategoryDescription** is also unique as no two CategoryDescription values should have the same text.
