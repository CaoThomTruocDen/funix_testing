-- cau 2
use book_shop;
select concat(author_fname,' ',author_lname) as fullname from books;

select concat_ws('-',author_fname,author_lname) as fullname from books;

-- cau 3
select substring('data analyst',6,12);


-- cau 4
select length('database');

select length(title) from books;


-- cau 5
select upper('database');

select upper(title) from books;


-- cau 6
select lower('DATABASE');

select lower(title) from books;