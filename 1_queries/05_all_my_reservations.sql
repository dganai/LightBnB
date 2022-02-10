SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
ORDER BY reservations.start_date
LIMIT 10;