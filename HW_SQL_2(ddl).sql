

 --1)Создать таблицу employees

create table employees(
  id serial  primary key,
  employee_name Varchar(50) not null
  );
 
 
  --2)Наполнить таблицу employee 70 строками.
 
  insert into employees(employee_name)
  values ('Charlie Jackson'),
         ('Loretta Watson'),
         ('Mark Simon'),
         ('William Lopez'),
         ('Robert Lambert'),
         ('Charles Price'),
         ('Amber Rhodes'),
         ('Jack Phillips'),
         ('Donna Harper'),
         ('Tina Jefferson'),
         ('Charles Brooks'),
         ('John Harris'),
         ('Samuel Bell'),
         ('Michael Brown'),
         ('Felicia Martinez'),
         ('Mark Graves'),
         ('Linda Rivera'),
         ('Patricia Burgess'),
         ('Rhonda Curtis'),
         ('Sharon Evans'),
         ('Sharon Richardson'),
('Thomas Schmidt'),
('Joyce Payne'),
('Greg Smith'),
('Dan Green'),
('Alan Harris'),
('Joseph Rice'),
('Betty Rice'),
('Raul Webb'),
('Pamela Wagner'),
('Michael Norris'),
('James Ramirez'),
('Phillip Chavez'),
('Bobby Moore'),
('Jean Barton'),
('Lorraine Roberts'),
('Randall Scott'),
('Sharon Davis'),
('Melissa Neal'),
('Marvin Wells'),
('Michael Stewart'),
('Charlotte Williams'),
('Ana Hanson'),
('Robert Barnett'),
('Walter Miller'),
('Deborah Rogers'),
('Cheryl Fields'),
('Leo Stewart'),
('Robert Lindsey'),
('Kevin Holt'),
('Julie Gordon'),
('Carl Dennis'),
('Joseph Clark'),
('Jeanne Harmon'),
('Timothy Rogers'),
('Larry Brown'),
('Chad Harrison'),
('Larry Green'),
('William Warren'),
('Gloria Turner'),
('Andrea Thomas'),
('Robert Jenkins'),
('Shawn Anderson'),
('Steven Sanders'),
('John Jones'),
('John Summers'),
('Brenda Anderson'),
('Norman Craig'),
('Gladys Reyes'),
('David Jones');

select * from employees;

  --3)Таблица salary

create table salary(
  id serial  primary key,
  monthly_salary Int not null
  );
 
 --4)Наполнить таблицу salary 15 строками:
 
 insert into salary(monthly_salary)
 values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);  
     
     select * from salary;
 
 

 --5)Таблица employee_salary

create table employee_salary(
   id serial  primary key,
   employee_id Int  not null unique,
    salary_id Int  not null
    );
     
   select * from employee_salary;
    
 --6)Наполнить таблицу employee_salary 40 строками:
   
   insert into employee_salary(employee_id, salary_id)
   values(7, 1000),
       (20, 1100),
       (3, 1200),
       (5, 1300),
       (23, 1400),
       (11, 1500),
       (10, 1600),
       (22, 1700),
       (21, 1800),
       (34, 1900),
       (6, 2000),
       (1, 2100),
       (2, 2200),
       (33,2300),
       (4, 2400),
       (8,2500);  
        
 select * from employee_salary;

 --7)Таблица roles

create table roles(
id serial  primary key,
role_name int not null unique
);

select * from roles;

 --8)Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar (30);


 --9)Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


select * from employees role_id;



 --10)Таблица roles_employee

create table roles_employee(
id serial  primary key,
employee_id Int unique not null,
role_id Int not null, 
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
);

select * from roles_employee;



 --11)Наполнить таблицу roles_employee 40 строками:


insert into roles_employee(id,employee_id,role_id)
values (1, 7, 2),
       (2, 20, 4),
       (3, 3, 9),
       (4, 5, 13),
       (5, 23, 4),
       (6, 11,2),
       (7, 10,9),
       (8, 22,13),
       (9, 21,3),
       (10, 34,4),
       (11, 6, 7),
       (12,  1, 1),
       (13, 2, 5),
       (14, 33, 6),
       (15, 4, 7),
       (16, 8, 10),
       (17, 9, 11),
       (18, 12, 15),
       (19, 13, 16),
       (20, 14, 17),
       (21, 15, 11),
       (22, 16, 14),
       (23, 17, 16),
       (24, 18, 18),
       (25, 19, 3),
       (26, 24, 1),
       (27, 25, 2),
       (28, 26, 3),
       (29, 27, 4),
       (30, 28, 5);
       
   

select * from roles_employee;

)
   