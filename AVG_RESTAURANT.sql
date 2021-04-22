CREATE DEFINER=`root`@`localhost` PROCEDURE `AVG_RESTAURANT`(IN RestaurantID INT, OUT outavgRest decimal(2, 1))
BEGIN
	DECLARE theAVGInfo DECIMAL(2,1);
	SET theAVGInfo=	(SELECT AVG(rating.Overall_rating) FROM rating
					INNER JOIN Orders ON rating.Order_ID= Orders.Order_ID
                    WHERE Orders.Restaurant_ID = RestaurantID);
     SET outavgRest= theAVGInfo;
END