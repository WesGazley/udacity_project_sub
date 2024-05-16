-- Question 1 We want to understand more about the movies that families are watching.

 /* SELECT 
    f.title,
    c.name,
    COUNT(*) AS rental_count
FROM 
    category c
JOIN 
    film_category fc ON c.category_id = fc.category_id
JOIN 
    film f ON f.film_id = fc.film_id
JOIN 
    inventory i ON f.film_id = i.film_id
JOIN 
    rental r ON i.inventory_id = r.inventory_id
WHERE 
    c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
GROUP BY 
    f.title, c.name
ORDER BY 
    c.name, f.title; */

    SELECT f.title,
       c.NAME,
       Count(*) AS rental_count
FROM   category c
       JOIN film_category fc
         ON c.category_id = fc.category_id
       JOIN film f
         ON f.film_id = fc.film_id
       JOIN inventory i
         ON f.film_id = i.film_id
       JOIN rental r
         ON i.inventory_id = r.inventory_id
WHERE  c.NAME IN ( 'Animation', 'Children', 'Classics', 'Comedy',
                   'Family', 'Music' )
GROUP  BY f.title,
          c.NAME
ORDER  BY c.NAME,
          f.title;
/*Answer to the question is s we can see from the titles that are 
considered family friend, the catogories 
are relitively close with Family leading 
followed closly by Animation.
