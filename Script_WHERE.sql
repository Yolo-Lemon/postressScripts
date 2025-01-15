/*Выбрать из таблицы CATS имя, пол и возраст для всех рыжих котов, отсортировать по имени.*/
SELECT CAT_NAME, GENDER, AGE
FROM CAT
WHERE COLOR = 'Рыжий'
ORDER BY CAT_NAME;

/*Выбрать из таблицы CATS имя, возраст и игрушку для всех котов старше 4, отсортировать по имени.*/
SELECT CAT_NAME, AGE, TOY
FROM CAT
WHERE AGE>4
ORDER BY CAT_NAME

/*Выбрать из таблицы CATS имя, возраст для всех котов мужского пола и белого цвета, отсортировать по имени и по возрасту.*/
SELECT CAT_NAME, AGE
FROM CAT
WHERE GENDER='М' AND COLOR = 'Белый'
ORDER BY CAT_NAME, AGE;

/*Выбрать из таблицы CATS все поля для всех котов, у кого цвет серый или любимая игрушка рыбка, отсортировать по имени.*/
SELECT ID, CAT_NAME, GENDER, AGE, COLOR, TOY, OWNER_NAME
FROM CAT
WHERE COLOR = 'Серый' OR TOY = 'Рыбка'
ORDER BY CAT_NAME;

/*Выбрать из таблицы CATS имя, пол, возраст и имя владельца для всех котов, у кого имя владельца равно Петя или Оля, отсортировать по имени и полу.*/
SELECT CAT_NAME, GENDER, AGE, OWNER_NAME
FROM CAT
WHERE OWNER_NAME = 'Петя' OR OWNER_NAME = 'Ольга'
ORDER BY CAT_NAME, GENDER;

/*Выбрать из таблицы CATS все данные для всех котов, у которых нет любимой игрушки.*/
SELECT ID, CAT_NAME, GENDER, AGE, COLOR, TOY, OWNER_NAME
FROM CAT
WHERE TOY IS NULL;

/*Выбрать из таблицы CATS имя, возраст, пол и игрушку для всех котов с возрастом между 1 и 2, отсортировать по полу и возрасту.*/
SELECT CAT_NAME, AGE, GENDER, TOY
FROM CAT
WHERE AGE BETWEEN 1 AND 2
ORDER BY GENDER, AGE;

/*Выбрать из таблицы CATS все данные для всех котов, у которых любимая игрушка мяч и бантик, отсортировать по имени, полу и возрасту в обратном порядке.*/
SELECT  ID, CAT_NAME, GENDER, AGE, COLOR, TOY, OWNER_NAME
FROM CAT
WHERE TOY IN ('Мяч','Бантик')
ORDER BY CAT_NAME, GENDER, AGE DESC;

/*Выбрать из таблицы CATS имя, возраст для всех полосатых котов женского пола старше 3 лет, отсортировать по имени.*/
SELECT CAT_NAME, AGE
FROM CAT
WHERE COLOR = 'Полосатый' AND GENDER ='Ж' AND AGE>3
ORDER BY CAT_NAME;

/*Выбрать из таблицы CATS имя и цвет для всех черных, серых и белых котов или котов, у которых владельца зовут Ольга, отсортировать по цвету.*/
SELECT CAT_NAME, COLOR
FROM CAT
WHERE COLOR IN ('Черный','Серый','Белый') AND OWNER_NAME = 'Ольга'
ORDER BY COLOR;

/*Выбрать из таблицы CATS все данные для всех котов, у которых имя владельца начинается на букву “И”, отсортировать по имени владельца.*/
SELECT ID, CAT_NAME, GENDER, AGE, COLOR, TOY, OWNER_NAME
FROM CAT
WHERE OWNER_NAME LIKE 'И%'
ORDER BY OWNER_NAME;

/*Выбрать из таблицы CATS все данные для всех котов, у которых имя начинается на любую букву кроме буквы “П”, отсортировать по имени.*/
SELECT ID, CAT_NAME, GENDER, AGE, COLOR, TOY, OWNER_NAME
FROM CAT
WHERE OWNER_NAME NOT LIKE 'П%'
ORDER BY CAT_NAME;

/*Выбрать из таблицы CATS все данные для всех котов, у которых в имени нет буквы “т”, отсортировать по имени.   r*/
SELECT ID, CAT_NAME, GENDER, AGE, COLOR, TOY, OWNER_NAME
FROM CAT
WHERE lower(CAT_NAME) NOT LIKE '%т%'
ORDER BY CAT_NAME;
