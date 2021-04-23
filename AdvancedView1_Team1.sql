/* View the on time ratings of drivers with a courteous rating of 3 or 
more */
-- Select Rating IDs, Courteous ratings, and the On Time ratings of drivers
SELECT rating_id, courteous_rating, onTime_rating

-- Select only from drivers with a courteous rating of 3 or more
FROM (
SELECT rating_id, courteous_rating, onTime_rating
FROM driver_rating
WHERE courteous_rating >= 3) AS courteous_3

-- Order by onTime_rating
ORDER BY onTime_rating;
