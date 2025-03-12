CREATE TABLE country(
country_id int,
country_name varchar
);

CREATE TABLE author (
author_id int,
surname varchar,
first_name varchar,
patronymic varchar,
country_id int
);

CREATE TABLE book_author_link(
id int,
book_id int,
author_id int
);

CREATE TABLE book (
book_id int,
book_name varchar,
book_description TEXT,
publication_year smallint
);

CREATE TABLE quantity_books(
quantity_id int,
book_id int,
quantity_all int,
quantity_issue int,
quanity_in_stock int
);

CREATE TABLE genre_book_link(
id int,
book_id int,
genre_id int
);

CREATE TABLE genre(
genre_id int,
genre_name varchar
);

CREATE TABLE issue_history(
issue_history_id int,
issue_date date,
return_date date,
book_id int,
client_id int,
employee_id int
);

CREATE TABLE client(
client_id int,
surname varchar,
first_name varchar,
patronymic varchar,
phone_number int,
library_card int
);

CREATE TABLE employee(
employee_id int,
surname varchar,
first_name varchar,
patronymic varchar
);

