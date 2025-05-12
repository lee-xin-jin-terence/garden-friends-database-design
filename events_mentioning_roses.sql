/*
  This query retrieves the details (title, description, date, location, leader name, and instructions)
  of all events that mention "roses" in their information.
*/

SELECT Title, Description, EventDate,Location, RTRIM(FirstName) || ' ' || RTRIM(LastName) AS LeaderName , EventInstructions
FROM EVENT E
         JOIN MEMBER M    ON    E.LeaderID = M.MemberID
WHERE (lower(Title) LIKE '%roses%') OR (lower(Description) LIKE '%roses%') ;
