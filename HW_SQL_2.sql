-- 1) Создать таблицу employees
--   - id. serial,  primary key,
--   - employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
select * from employees;


-- 2) Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values  ('name_1'),
		('name_2'),
		('name_3'),
		('name_4'),
		('name_5'),
		('name_6'),
		('name_7'),
		('name_8'),
		('name_9'),
		('name_10'),
		('name_11'),
		('name_12'),
		('name_13'),
		('name_14'),
		('name_15'),
		('name_16'),
		('name_17'),
		('name_18'),
		('name_19'),
		('name_20'),
		('name_21'),
		('name_22'),
		('name_23'),
		('name_24'),
		('name_25'),
		('name_26'),
		('name_27'),
		('name_28'),
		('name_29'),
		('name_30'),
		('name_31'),
		('name_32'),
		('name_33'),
		('name_34'),
		('name_35'),
		('name_36'),
		('name_37'),
		('name_38'),
		('name_39'),
		('name_40'),
		('name_41'),
		('name_42'),
		('name_43'),
		('name_44'),
		('name_45'),
		('name_46'),
		('name_47'),
		('name_48'),
		('name_49'),
		('name_50'),
		('name_51'),
		('name_52'),
		('name_53'),
		('name_54'),
		('name_55'),
		('name_56'),
		('name_57'),
		('name_58'),
		('name_59'),
		('name_60'),
		('name_61'),
		('name_62'),
		('name_63'),
		('name_64'),
		('name_65'),
		('name_66'),
		('name_67'),
		('name_68'),
		('name_69'),
		('name_70');

select * from employees;


-- 3) Создать таблицу salary
--   - id. Serial  primary key,
--   - monthly_salary. Int, not null
	
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;


-- 4) Наполнить таблицу salary 16 строками:
--   - 1000
--   - 1100
--   - 1200
--   - 1300
--   - 1400
--   - 1500
--   - 1600
--   - 1700
--   - 1800
--   - 1900
--   - 2000
--   - 2100
--   - 2200
--   - 2300
--   - 2400
--   - 2500

insert into salary(monthly_salary)
values  (1000),
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


-- 5) Создать таблицу employee_salary
--   - id. Serial  primary key,
--   - employee_id. Int, not null, unique
--   - salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--drop table employee_salary;

select * from employee_salary;


-- 6) Наполнить таблицу employee_salary 40 строками:
--   - в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values 	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(71, 3),
		(12, 8),
		(17, 1),
		(72, 11),
		(20, 3),
		(37, 5),
		(73, 12),
		(74, 2),
		(50, 16),
		(59, 7),
		(75, 9),
		(43, 6),
		(76, 10),
		(55, 8),
		(10, 2),
		(77, 1),
		(54, 15),
		(41, 7),
		(78, 9),
		(63, 14),
		(79, 3),
		(2, 10),
		(8, 7),
		(21, 1),
		(27, 12),
		(80, 5),
		(34, 8),
		(22, 16),
		(48, 2);

select * from employee_salary;


--7) Создать таблицу roles
--  - id. Serial  primary key,
--  - role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;


--8) Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);


--9) Наполнить таблицу roles 20 строками

insert into roles (role_name)
values  ('Junior Python Developer'),
		('Middle Python Developer'),
		('Senior Python Developer'),
		('Junior Java Developer'),
		('Middle Java Developer'),
		('Senior Java Developer'),
		('Junior JavaScript Developer'),
		('Middle JavaScript Developer'),
		('Senior JavaScript Developer'),
		('Junior Manual QA Engineer'),
		('Middle Manual QA Engineer'),
		('Senior Manual QA Engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales Manager'),
		('Junior Automation QA Engineer'),
		('Middle Automation QA Engineer'),
		('Senior Automation QA engineer');

select * from roles;

	
--10) Создать таблицу roles_employee
--   - id. Serial  primary key,
--   - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--   - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)	
);
select * from roles_employee;


--11) Наполнить таблицу roles_employee 40 строками
		
insert into roles_employee(employee_id, role_id)
values 	(7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(57, 20),
		(2, 15),
		(70, 17),
		(63, 5),
		(69, 14),
		(44, 8),
		(15, 1),
		(28, 11),
		(33, 18),
		(59, 2),
		(1, 16),
		(36, 20),
		(60, 5),
		(27, 19),
		(55, 12),
		(41, 6),
		(35, 10),
		(62, 7),
		(37, 2),
		(50, 18),
		(54, 1),
		(48, 10),
		(43, 15),
		(12, 4),
		(66, 8),
		(31, 17),
		(4, 11),
		(8, 20),
		(9, 4);
	
select * from roles_employee;
		
		
		
		
