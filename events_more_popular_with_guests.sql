/*
Query all the events (title, date) that were more popular (i.e. higher attendance) with guests than with
registered members. 
*/

SELECT GUEST_ATTENDEE.Title, GUEST_ATTENDEE.EventDate FROM
( SELECT EP.EventID, Title, EventDate, COUNT(EP.EventID) AS GuestCount
FROM EVENT_PARTICIPATION EP
      JOIN MEMBER M ON EP.MemberID = M.MemberID
      JOIN EVENT E ON E.EventID = EP.EventID
WHERE M.MembershipType = 'Guest'  AND EventDate<SYSDATE
GROUP BY  EP.EventID,Title, EventDate) GUEST_ATTENDEE
                   
JOIN

(SELECT  EP.EventID , Title, EventDate, COUNT(EP.EventID) AS MemberCount
FROM EVENT_PARTICIPATION EP
    JOIN MEMBER M ON EP.MemberID = M.MemberID
    JOIN EVENT E ON E.EventID = EP.EventID
WHERE M.MembershipType='Member' AND EP.ParticipationType='Attendee'
     AND EventDate < SYSDATE
GROUP BY EP.EventID, Title, EventDate) MEMBER_ATTENDEE
                           
        ON  GUEST_ATTENDEE.EventID = MEMBER_ATTENDEE.EventID
WHERE GUEST_ATTENDEE.GuestCount > MEMBER_ATTENDEE.MemberCount;
