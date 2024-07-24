SELECT * FROM users WHERE NOT eMail LIKE '%gmail.com';
-- retorna todos los que no tengan el gmail.com
SELECT * FROM users WHERE NOT eMail LIKE '%gmail.com' AND edad= 33;
-- retorna todos los que no tengan el gmail.com AND q tengan edad = 33
SELECT * FROM users WHERE NOT eMail LIKE '%gmail.com' OR edad= 33;
-- retorna todos los que no tengan el gmail.com OR q tengan edad = 33