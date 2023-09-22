-- cau 1
-- NOT
SELECT 10 != 10;

-- AND
SELECT 15 > 14 && 99-5 <= 94;

-- OR
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

-- cau 2
use book_shop;
select * from books
where released_year < 1980;

select * from books
where author_lname = 'Eggers' 
or author_lname = 'Chabon';

select * from books
where author_lname = 'Lahiri'
and released_year < 2000;

select * from books
where pages between 100 and 200;

select author_lname,count(*) as quantity from books
group by author_lname;

select author_lname,count(*) as quantity from books
where author_lname = 'Carver'
group by author_lname;