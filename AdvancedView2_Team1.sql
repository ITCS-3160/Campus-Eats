/* View restaurant ratings and compare overall to the average price and 
food ratings.*/
-- Select rating IDs, food ratings, price ratings, and overall ratings of restaurants
SELECT rating_id, food_rating, price_rating, overall_rating, food_price_sum/2 AS food_price_avg_rating

-- Subquery to calculate food_price_avg_rating
FROM (SELECT rating.rating_id, food_rating, price_rating, overall_rating,
		food_rating + price_rating AS food_price_sum
		FROM restaurant_ratings
        -- Join rating and restaurant_ratings by rating_id
        INNER JOIN rating
		ON rating.rating_id = restaurant_ratings.rating_id) AS sub

-- Order by overall rating
ORDER BY overall_rating;

