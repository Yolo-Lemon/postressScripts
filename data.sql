CREATE SEQUENCE country_seq START 1;

INSERT INTO country(country_id, country_name)
VALUES(nextval('country_seq'), 'Англия');
INSERT INTO country(country_id, country_name)
VALUES(nextval('country_seq'), 'Германия');
INSERT INTO country(country_id, country_name)
VALUES(nextval('country_seq'), 'Франция');
INSERT INTO country(country_id, country_name)
VALUES(nextval('country_seq'), 'Италия');
INSERT INTO country(country_id, country_name)
VALUES(nextval('country_seq'), 'Россия');

CREATE SEQUENCE author_seq START 1;

INSERT INTO author(author_id ,surname ,first_name ,patronymic , country_id )
VALUES(nextval('author_seq'), 'Диккенс', 'Чарльз','Джон',1);
INSERT INTO author(author_id ,surname ,first_name ,patronymic , country_id )
VALUES(nextval('author_seq'), 'Гёте', 'Иоанн','Вольфганг',2);
INSERT INTO author(author_id ,surname ,first_name ,patronymic , country_id )
VALUES(nextval('author_seq'), 'Гюго', 'Виктор','Мари',3);
INSERT INTO author(author_id ,surname ,first_name ,country_id )
VALUES(nextval('author_seq'), 'Алигьери', 'Данте',4);
INSERT INTO author(author_id ,surname ,first_name ,patronymic ,country_id )
VALUES(nextval('author_seq'), 'Достоевский', 'Фёдор','Михайлович',5);

CREATE SEQUENCE book_seq START 1;

INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Посмертные записки Пиквикского клуба', 'Роман Чарльза Диккенса "Посмертные записки Пиквикского клуба" подготовлен по принципам серии "Большая иллюстрированная библиотека классики". Издание отражает существование знаменитого романа в мировой культуре с момента его появления в первой трети XIX века до наших дней и содержит обширный материал о жизни и творчестве великого английского писателя.', 
1837);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Приключения Оливера Твиста', '"Приключения Оливера Твиста" - самый знаменитый роман великого Диккенса. История мальчика, оказавшегося сиротой, вынужденного скитаться но мрачным трущобам Лондона. Перипетии судьбы маленького героя, многочисленные встречи на его пути и счастливый конец трудных и опасных приключений - все это вызывает неподдельный интерес у множества читателей всего мира.',
1838);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Фауст', 'Фауст — учёный, съедаемый скукой и тоской. После попытки самоубийства он призывает дьявола, чтобы получить новые знания и магическую силу, которые позволили бы ему предаться всем земным наслаждениям и овладеть всеми знаниями мира. В ответ является прислужник дьявола Мефистофель.',
1832);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Страдания юного Вертера', 'Великий поэт Германии, выдающийся мыслитель и ученый Иоганн Вольфганг Гете принадлежит к тем личностям, которыми восхищается весь мир. Его роман СТРАДАНИЯ ЮНОГО ВЕРТЕРА является одним из замечательнейших романов о любви, в котором Гете точно и проникновенно воссоздал психологию страсти, своеобразие чувств мужчины и женщины.',
1774);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Отверженные', 'Ореолом романтизма овеяны все произведения великого французского поэта, романиста и драматурга Виктора Мари Гюго (1802—1885). Идея животворной любви, милосердия, торжества добра над злом — вот стержень его романа «Отверженные». Среди «отверженных» и Жан Вальжан, осужденный на 20 лет каторги за то, что украл хлеб для своей голодающей семьи, и маленькая замарашка Козетта, превратившаяся в очаровательную девушку, и дитя парижских улиц Гаврош...',
1862);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Собор Парижской Богоматери', '«Собор Парижской Богоматери» – знаменитый роман Виктора Гюго. Книга, в которой увлекательный, причудливый сюжет – всего лишь прекрасное обрамление для поразительных, потрясающих воображение авторских экскурсов в прошлое Парижа. «Собор Парижской Богоматери» экранизировали и ставили на сцене десятки раз, однако ни одной из постановок не удалось до конца передать масштаб и величие оригинала Гюго.',
1831);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Божественная комедия', 'Поэма великого итальянского поэта Данте Алигьери (1265-1321) «Божественная Комедия» – бессмертный памятник XIV века, который является величайшим вкладом итальянского народа в сокровищницу мировой литературы. В нем автор решает богословские, исторические и научные проблемы.',
1321);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Пир', '',
1306);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Идиот', 'Роман, в котором творческие принципы Достоевского воплощаются в полной мере, а удивительное владение сюжетом достигает подлинного расцвета. Яркая и почти болезненно талантливая история несчастного князя Мышкина, неистового Парфена Рогожина и отчаявшейся Настасьи Филипповны, много раз экранизированная и поставленная на сцене, и сейчас завораживает читателя...',
1869);
INSERT INTO book(book_id , book_name , book_description , publication_year)
VALUES(nextval('book_seq'), 'Преступление и наказание', '"Преступление и наказание" - одно из самых известных произведений Достоевского. Гениальный роман, главные темы которого: преступление и наказание, жертвенность и любовь, свобода и гордость человека - обрамлены почти детективным сюжетом. Абсолютная классика отечественной литературы, многократно экранизированная и не раз поставленная на сцене по сей день читается на одном дыхании.',
1866);

CREATE SEQUENCE book_author_link_seq START 1;

INSERT INTO book_author_link(id, book_id, author_id )
VALUES(nextval('book_author_link_seq'), 1, 1),
(nextval('book_author_link_seq'),2,1),
(nextval('book_author_link_seq'),3,2),
(nextval('book_author_link_seq'),4,2),
(nextval('book_author_link_seq'),5,3),
(nextval('book_author_link_seq'),6,3),
(nextval('book_author_link_seq'),7,4),
(nextval('book_author_link_seq'),8,4),
(nextval('book_author_link_seq'),9,5),
(nextval('book_author_link_seq'),10,5);

CREATE SEQUENCE genre_seq START 1;

INSERT INTO genre(genre_id, genre_name)
VALUES(nextval('genre_seq'), 'Роман'),
(nextval('genre_seq'), 'Психологический реализм'),
(nextval('genre_seq'), 'Поэзия'),
(nextval('genre_seq'), 'Трактат'),
(nextval('genre_seq'), 'Трагедия'),
(nextval('genre_seq'), 'Эпопея'),
(nextval('genre_seq'), 'Фикшн'),
(nextval('genre_seq'), 'Автобиографический роман'),
(nextval('genre_seq'), 'Городская проза'),
(nextval('genre_seq'), 'Сатира'),
(nextval('genre_seq'), 'Драма');

CREATE SEQUENCE genre_book_link_seq START 1;

INSERT INTO genre_book_link(id , book_id , genre_id )
VALUES(nextval('genre_book_link_seq'), 1, 10), 
(nextval('genre_book_link_seq'), 2, 9),
(nextval('genre_book_link_seq'), 3, 11),
(nextval('genre_book_link_seq'), 4, 8),
(nextval('genre_book_link_seq'), 5, 6),
(nextval('genre_book_link_seq'), 6, 11),
(nextval('genre_book_link_seq'), 7, 3),
(nextval('genre_book_link_seq'), 8, 4),
(nextval('genre_book_link_seq'), 9, 1),
(nextval('genre_book_link_seq'), 10, 2),
(nextval('genre_book_link_seq'), 5, 5),
(nextval('genre_book_link_seq'), 3, 7),
(nextval('genre_book_link_seq'), 1, 1);

CREATE SEQUENCE quantity_books_seq START 1;

INSERT INTO quantity_books(quantity_id , book_id , quantity_all , quantity_issue , quanity_in_stock )
VALUES(nextval('quantity_books_seq'), 1, 4, 2, 2), 
(nextval('quantity_books_seq'), 2, 3, 0, 3),
(nextval('quantity_books_seq'), 3, 4, 3, 1),
(nextval('quantity_books_seq'), 4, 5, 1, 4),
(nextval('quantity_books_seq'), 5, 4, 4, 0),
(nextval('quantity_books_seq'), 6, 3, 2, 1),
(nextval('quantity_books_seq'), 7, 2, 0, 2),
(nextval('quantity_books_seq'), 8, 1, 1, 0),
(nextval('quantity_books_seq'), 9, 2, 1, 1),
(nextval('quantity_books_seq'), 10, 3, 0, 3);

CREATE SEQUENCE issue_history_seq START 1;

INSERT INTO issue_history(issue_history_id , issue_date , book_id , client_id , employee_id )
VALUES(nextval('issue_history_seq'), '2025-02-28', 1, 1, 1),
(nextval('issue_history_seq'), '2025-02-27', 1, 2, 1),
(nextval('issue_history_seq'), '2025-02-26', 3, 2, 1),
(nextval('issue_history_seq'), '2025-02-26', 3, 3, 2),
(nextval('issue_history_seq'), '2025-02-20', 3, 4, 2),
(nextval('issue_history_seq'), '2025-02-26', 4, 2, 3),
(nextval('issue_history_seq'), '2025-02-21', 5, 1, 1),
(nextval('issue_history_seq'), '2025-02-22', 5, 2, 1),
(nextval('issue_history_seq'), '2025-02-22', 5, 3, 1),
(nextval('issue_history_seq'), '2025-02-22', 5, 4, 2),
(nextval('issue_history_seq'), '2025-02-01', 6, 5, 3),
(nextval('issue_history_seq'), '2025-02-19', 6, 4, 3),
(nextval('issue_history_seq'), '2025-02-19', 8, 2, 1),
(nextval('issue_history_seq'), '2025-02-19', 9, 3, 1);

CREATE SEQUENCE employee_seq START 1;

INSERT INTO employee(employee_id , surname , first_name , patronymic )
VALUES(nextval('employee_seq'), 'Иванов', 'Иван', 'Иванович'),
(nextval('employee_seq'), 'Петров', 'Петр', 'Петрович'),
(nextval('employee_seq'), 'Васильева', 'Василина', 'Васильевна');

CREATE SEQUENCE client_seq START 1;

INSERT INTO client(client_id , surname , first_name , patronymic , phone_number , library_card )
VALUES(nextval('client_seq'), 'Иванов', 'Петр', 'Иванович', 89999999, 111111),
(nextval('client_seq'), 'Петров', 'Петр', 'Иванович', 9888888, 111112),
(nextval('client_seq'), 'Васильев', 'Петр', 'Иванович', 1234556, 111113),
(nextval('client_seq'), 'Иванов', 'Петр', 'Васильевич', 123321, 111114),
(nextval('client_seq'), 'Колянский', 'Коля', 'Иванович', 123455673, 111115);

UPDATE issue_history
SET return_date = issue_date + INTERVAL '2 week'
WHERE return_date IS Null;


