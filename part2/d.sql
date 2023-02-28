-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
SELECT first_name,
    last_name
FROM favorites
    INNER JOIN users on users.id = favorites.user_id
    INNER JOIN dogs on dogs.id = favorites.dog_id
WHERE name = "Zoey";