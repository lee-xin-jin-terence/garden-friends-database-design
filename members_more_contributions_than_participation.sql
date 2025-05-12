/*
  This query retrieves the names of members who have contributed (as organiser, leader, or helper)
  to more events than they have attended as participants.
  It also displays the total number of events each member contributed to.
  
  The NVL function is used to convert null values to 0, ensuring that null values are treated correctly 
  for summing and comparing contributions and participation counts.
*/


SELECT RTRIM(FirstName)||' '||RTRIM(LastName) AS Name, nvl(LeaderCount,0) AS LeadCount,  nvl(OrganiserCount, 0) AS OrganiseCount, nvl(HelperCount,0) AS HelpCount,  nvl(LeaderCount,0) + nvl(OrganiserCount,0 ) + nvl(HelperCount, 0) AS Lead_Organise_Help_Sum , nvl(AttendeeCount, 0) AS ParticipantCount

FROM MEMBER M

LEFT JOIN

( SELECT MemberID, NVL(COUNT(EventID), 0) AS LeaderCount
FROM MEMBER M
  JOIN EVENT E ON E.LeaderID = M.MemberID
WHERE MembershipType= 'Member'
GROUP BY MemberID) LEADER

ON M.MemberID = LEADER.MemberID

LEFT JOIN

( SELECT  MemberID, NVL(COUNT(OrganiserID), 0) AS OrganiserCount
FROM MEMBER M
JOIN EVENT E ON E.OrganiserID = M.MemberID
WHERE MembershipType = 'Member'
GROUP By MemberID ) ORGANISER

ON M.MemberID = ORGANISER.MemberID

LEFT JOIN

(SELECT M.MemberID AS MemberID, NVL(COUNT(EventID),0) AS HelperCount
FROM MEMBER M
  JOIN EVENT_PARTICIPATION EP ON M.MemberID = EP.MemberID
WHERE ParticipationType= 'Helper' AND MembershipType = 'Member'
GROUP BY M.MemberID) HELPER

ON M.MemberID = HELPER.MemberID

LEFT JOIN

(SELECT M.MemberID AS MemberID, COUNT(EventID) AS AttendeeCount
FROM MEMBER M
   JOIN EVENT_PARTICIPATION EP ON EP.MemberID = M.MemberID
WHERE ParticipationType='Attendee' AND MembershipType= 'Member'
GROUP BY M.MemberID) ATTENDEE

ON M.MemberID = ATTENDEE.MemberID

WHERE M.MembershipType = 'Member' AND (nvl(LeaderCount,0) + nvl(OrganiserCount,0) + nvl(HelperCount, 0) > nvl(AttendeeCount,0));
