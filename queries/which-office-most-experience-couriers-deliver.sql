SELECT office.address,
       round(avg(coalesce(experience, 0)), 2) AS average_courier_experience,
       CASE
           WHEN round(avg(coalesce(experience, 0)), 2) > 2 THEN
            'office-is-popular'
           ELSE
            'office-is-not-popular'
       END
FROM office
JOIN orders o on office.id = o.office_id
JOIN courier c on o.courier_id = c.id
GROUP BY office.address
ORDER BY average_courier_experience DESC;