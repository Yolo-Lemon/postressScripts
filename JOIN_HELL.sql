SELECT
country.country_id, 
country.country_name, 
au.author_id,
au.surname,
au.first_name,
au.patronymic,
au.country_id
FROM country
INNER JOIN author au ON au.country_id = country.country_id
ORDER BY country.country_id , au.author_id;

INSERT INTO author (author_id,surname,first_name,patronymic,country_id)
VALUES (nextval('author_seq'), 'Толстой', 'Лев', 'Николаевич', 5);

SELECT 
bk.book_id,
bk.book_name,
au.author_id,
au.surname,
au.first_name,
au.patronymic
FROM book_author_link bul 
INNER JOIN book bk ON bk.book_id = bul.book_id
INNER JOIN author au ON au.author_id = bul.author_id
ORDER BY bk.book_id;

SELECT
bk.book_id,
bk.book_name,
qb.quantity_issue,
qb.quanity_in_stock
FROM book bk
INNER JOIN quantity_books qb  ON bk.book_id = qb.book_id
ORDER BY bk.book_id;

SELECT
b.book_name,
au.first_name,
au.surname,
au.patronymic,
c.first_name,
c.surname,
c.patronymic,
e.first_name,
e.surname,
e.patronymic
FROM issue_history ih 
INNER JOIN book b ON b.book_id = ih.book_id
INNER JOIN book_author_link bal ON bal.book_id = b.book_id
INNER JOIN author au ON au.author_id = bal.author_id
INNER JOIN client c ON c.client_id = ih.client_id
INNER JOIN employee e ON e.employee_id = ih.employee_id
ORDER BY b.book_name;

SELECT
au.author_id,
au.first_name,
au.surname,
au.patronymic,
bal.book_id
FROM book_author_link bal
INNER JOIN author au  ON au.author_id = bal.author_id AND bal.book_id IS NULL
LEFT JOIN book b ON b.book_id = bal.book_id
ORDER BY au.author_id;

SELECT 
g.genre_id,
g.genre_name,
b.book_name
FROM genre g
INNER JOIN genre_book_link gbl ON g.genre_id = gbl.genre_id
INNER JOIN book b ON b.book_id = gbl.book_id
ORDER BY g.genre_name;

SELECT count(ih.book_id),
b.book_name
FROM issue_history ih
INNER JOIN book b ON ih.book_id = b.book_id
GROUP BY b.book_name
ORDER BY count(ih.book_id) DESC 
LIMIT 1;

SELECT
b.book_id,
b.book_name,
ih.issue_history_id,
ih.client_id,
ih.employee_id
FROM book b 
LEFT JOIN issue_history ih ON ih.book_id = b.book_id
WHERE ih.issue_history_id IS NULL 
ORDER BY b.book_id;

SELECT
c.client_id,
c.first_name,
c.surname,
c.patronymic,
c.library_card,
c.phone_number,
b.book_name
FROM client c 
LEFT JOIN issue_history ih ON c.client_id = ih.client_id
LEFT JOIN book b ON b.book_id = ih.book_id
ORDER BY c.client_id;

SELECT
e.employee_id,
e.first_name,
e.surname,
e.surname,
count(e.employee_id)
FROM employee e 
LEFT JOIN issue_history ih ON e.employee_id = ih.employee_id
GROUP BY e.employee_id 
ORDER BY e.employee_id;

