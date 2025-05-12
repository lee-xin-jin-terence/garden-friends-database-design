/*
  This query calculates the number of unfilled places for each event category that has been held so far.
  The NVL function is used to handle any potential null values, ensuring that they are converted to 0
  in case the sum or count returns null, allowing for accurate calculations.
*/

SELECT AVAILABLE_TABLE.EventCategory AS EventCategory, AVAILABLE_TABLE.TotalPlacesAvailable - FILLED_TABLE.TotalPlacesFilled AS Total_Unfilled_Places

  FROM

(SELECT EventCategory, nvl(SUM(PlacesAvailable),0) AS TotalPlacesAvailable
FROM 
EVENT
WHERE EventDate<SYSDATE
GROUP BY EventCategory)  AVAILABLE_TABLE

JOIN
(SELECT EventCategory, nvl(COUNT(ParticipationType),0) AS TotalPlacesFilled
FROM EVENT_PARTICIPATION 
JOIN EVENT  ON EVENT_PARTICIPATION.EventID= EVENT.EventID
WHERE ParticipationType='Attendee'   AND EventDate < SYSDATE
GROUP BY EventCategory)  FILLED_TABLE

ON AVAILABLE_TABLE.EventCategory = FILLED_TABLE.EventCategory;
