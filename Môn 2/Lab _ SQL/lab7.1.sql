use book_shop;


-- cau 1
create table students(
	id int auto_increment primary key,
    first_name varchar(150) not null
);

create table papers(
	student_id int,
    title varchar(150),
    grade int,
    foreign key (student_id) references students(id)
);


-- cau 2
INSERT INTO students (first_name) 
VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) 
VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


-- cau 3
select * from students;
select * from papers;


-- cau 4
select first_name,title,grade from students
left join papers
on students.id=papers.student_id
order by id,grade asc;

select first_name,round(avg(ifnull(grade,0)),4) as average from students
left join papers
on students.id=papers.student_id
group by first_name
order by average desc,first_name asc;




