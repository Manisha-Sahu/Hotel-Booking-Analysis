create database project_data;
use project_data;

select*from hotel_booking1;

-- What is the total number of bookings for each hotel? --
select hotel, count(*) AS total_count
from hotel_booking1 
group by hotel
order by total_count;

-- What is the average stay for each hotel --
select hotel, avg (total_stay) as avg_total_stay
from hotel_booking1
group by hotel 
order by avg_total_stay desc;

-- Count of the total of special requests --
select hotel, customer_type, sum(total_of_special_requests) as total_request
from hotel_booking1
where hotel = 'Resort Hotel'
group by hotel,customer_type;

select hotel, customer_type, sum(total_of_special_requests) as total_request
from hotel_booking1
where hotel = 'City Hotel'
group by hotel,customer_type;


-- Find out number of stay and people --
select * from hotel_booking1 
where total_stay > 3 and total_people between 4 and 6;

select * from hotel_booking1 
where total_stay < 3 and total_people between 1 and 3;

-- most common country for origin for guest

SELECT country, COUNT(*) AS guest_count
FROM hotel_booking1
GROUP BY country
ORDER BY guest_count DESC
LIMIT 3;

--  most popular room type for each hotel --
SELECT hotel, reserved_room_type, COUNT(*) AS popularity
FROM hotel_booking1
where hotel = 'City Hotel'
GROUP BY hotel, reserved_room_type
ORDER BY popularity DESC;

SELECT hotel, reserved_room_type, COUNT(*) AS popularity
FROM hotel_booking1
where hotel = 'Resort Hotel'
GROUP BY hotel, reserved_room_type
ORDER BY popularity DESC;










