/*
  This query retrieves a list of all equipment available for loan, along with the contact details of the
  member who is currently loaning the equipment. It also includes any specific information regarding
  the conditions of the loan for each piece of equipment.
*/

SELECT MS.ServiceName, RTRIM(FirstName) ||' '||RTRIM(Lastname) AS Name, EmailAddress AS ContactEmail, ContactNumber, Conditions AS LoanConditions
FROM  MEMBER MEM
      JOIN MEMBER_SERVICE MS ON MEM.MemberID = MS.MemberID
      JOIN SERVICE SER ON SER.ServiceName = MS.ServiceName
 WHERE ServiceCategoryName = 'equipment loan';
