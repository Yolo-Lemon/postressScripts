ALTER TABLE country ADD PRIMARY KEY (country_id);
ALTER TABLE author ADD PRIMARY KEY (author_id);
ALTER TABLE book_author_link ADD PRIMARY KEY (id);
ALTER TABLE book ADD PRIMARY KEY (book_id);
ALTER TABLE quantity_books ADD PRIMARY KEY (quantity_id);
ALTER TABLE genre_book_link ADD PRIMARY KEY (id);
ALTER TABLE genre ADD PRIMARY KEY (genre_id);
ALTER TABLE issue_history ADD PRIMARY KEY (issue_history_id);
ALTER TABLE client ADD PRIMARY KEY (client_id);
ALTER TABLE employee ADD PRIMARY KEY (employee_id);

ALTER TABLE author ADD CONSTRAINT author_country_to_contry_fk 
FOREIGN KEY (country_id) REFERENCES country (country_id);

ALTER TABLE book_author_link ADD CONSTRAINT book_author_to_author_fk 
FOREIGN KEY (author_id) REFERENCES author (author_id);

ALTER TABLE book_author_link ADD CONSTRAINT book_author_to_book_fk 
FOREIGN KEY (book_id) REFERENCES book (book_id);

ALTER TABLE quantity_books ADD CONSTRAINT quantity_books_to_book_fk 
FOREIGN KEY (book_id) REFERENCES book (book_id);

ALTER TABLE genre_book_link ADD CONSTRAINT genre_books_to_book_fk 
FOREIGN KEY (book_id) REFERENCES book (book_id);

ALTER TABLE genre_book_link ADD CONSTRAINT genre_books_to_genre_fk 
FOREIGN KEY (genre_id) REFERENCES genre (genre_id);

ALTER TABLE issue_history ADD CONSTRAINT issue_history_to_employee_fk 
FOREIGN KEY (employee_id) REFERENCES employee (employee_id);

ALTER TABLE issue_history ADD CONSTRAINT issue_history_to_book_fk 
FOREIGN KEY (book_id) REFERENCES book (book_id);

ALTER TABLE issue_history ADD CONSTRAINT issue_history_to_client_fk 
FOREIGN KEY (client_id) REFERENCES client (client_id);
