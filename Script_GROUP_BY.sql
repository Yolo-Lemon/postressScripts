/*Сгруппировать котов по полу и цвету, дополнительно вывести их количество. Сортировать по полу и цвету.*/
SELECT GENDER, COLOR, COUNT(*)
FROM CAT
GROUP BY GENDER, COLOR
ORDER BY GENDER, COLOR;

/*Сгруппировать котов по полу и возрасту, дополнительно вывести их количество. Сортировать по возрасту.*/
SELECT GENDER, AGE, COUNT(*)
FROM CAT
GROUP BY GENDER, AGE
ORDER BY AGE;

/*Вывести минимальный возраст для котов, сгруппированных по полу. Сортировать по полу.*/
SELECT MIN(AGE), GENDER
FROM CAT
GROUP BY GENDER
ORDER BY GENDER;

/*Вывести максимальный возраст для котов с учетом их цвета. Сортировать по цвету в обратном порядке.*/
SELECT MAX(AGE), COLOR
FROM CAT
GROUP BY COLOR
ORDER BY COLOR DESC;

/*Вывести цвет, количество котов и их минимальный возраст. Сортировать по цвету.*/
SELECT COLOR, COUNT(*), MIN(AGE)
FROM CAT
GROUP BY COLOR
ORDER BY COLOR;