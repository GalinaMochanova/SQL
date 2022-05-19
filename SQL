-- Таблица employees
-- Создать таблицу employees (id. serial,  primary key | employee_name. Varchar(50), not null


create table employees(
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

-- Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values ('Galina'),
       ('Viktor'),
       ('Tatiana'),
       ('Alexandr'),
       ('Julia'),
       ('Natalia'),
       ('Igor'),
       ('Konstantin'),
       ('Viktoria'),
       ('Artiom'),
       ('Olga'),
       ('Alexandra'),
       ('Ivan'),
       ('Irina'),
       ('Vladimir'),
       ('Andrey'),
       ('Timur'),
       ('Rustam'),
       ('Ekaterina'),
       ('Usain'),
       ('Barak'),
       ('Theodor'),
       ('Fransya'),
       ('Lev'),
       ('Yaroslav'),
       ('Margarita'),
       ('Viktoria'),
       ('Maxim'),
       ('Aleksei'),
       ('Boris'),
       ('Marina'),
       ('Maria'),
       ('Vadim'),
       ('Evgenia'),
       ('Artur'),
       ('Denis'),
       ('Ilya'),
       ('Anastasia'),
       ('Sabina'),
       ('Anton'),
       ('Vasilyi'),
       ('Eduard'),
       ('Nikita'),
       ('Rinat'),
       ('Erich'),
       ('Rainer'),
       ('Fransis'),
       ('Franz'),
       ('Nikolay'),
       ('Shuhrat'),
       ('Leonard'),
       ('Sheldon'),
       ('Rajesh'),
       ('Hovard'),
       ('Penny'),
       ('Amy'),
       ('Bernadett'),
       ('Monica'),
       ('Rachel'),
       ('Phoebe'),
       ('Joey'),
       ('Ross'),
       ('Chandler'),
       ('Gina'),
       ('Harry'),
       ('Ron'),
       ('Hermiona'),
       ('Hagrid'),
       ('Dumbledore'),
       ('Draco');
       

-- Таблица salary

--Создать таблицу salary (id. Serial  primary key, | monthly_salary. Int, not null)
      
      create table salary( 
      id serial primary key,
      monthly_salary int not null
      );

-- Наполнить таблицу salary 15 строками:
     
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

-- Таблица employee_salary
-- Создать таблицу employee_salary (id. Serial  primary key | employee_id. Int, not null, unique | salary_id. Int, not null)
           
           create table employee_salary( 
           id serial primary key,
           employee_id int not null unique,
           salary_id int not null
           );

-- Наполнить таблицу employee_salary 40 строками (в 10 строк из 40 вставить несуществующие employee_id)
          
          insert into employee_salary(employee_id, salary_id)
          values (3, 7),
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
                 (56, 3),
                 (75, 8),
                 (66, 11),
                 (84, 15),
                 (95, 12),
                 (35, 15),
                 (88, 12),
                 (24, 2),
                 (48, 5),
                 (99, 8),
                 (81, 9),
                 (6, 9),
                 (72, 13),
                 (83, 15),
                 (97, 10),
                 (77, 9),
                 (28, 6),
                 (59, 2),
                 (62, 9),
                 (31, 1),
                 (37, 8),
                 (39, 5),
                 (27, 4),
                 (44, 15),
                 (69, 6),
                 (32, 3),
                 (22, 1),
                 (8, 2),
                 (2, 15);
                
-- Таблица roles
-- Создать таблицу roles (id. Serial  primary key | role_name. int, not null, unique)
                
                create table roles(
                id serial primary key,
                role_name int not null unique
                );
               
-- Поменять тип столба role_name с int на varchar(30)
               
               alter table roles
               alter column role_name type varchar using role_name::varchar(30);
               
-- Наполнить таблицу roles 20 строками:

              insert into roles(role_name)
              values ('Junior_Python_developer'),
                     ('Middle_Python_developer'),
                     ('Senior_Python_developer'),
                     ('Junior_Java_developer'),
                     ('Middle_Java_developer'),
                     ('Senior_Java_developer'),
                     ('Junior_JavaScript_developer'),
                     ('Middle_JavaScript_developer'),
                     ('Senior_JavaScript_developer'),
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

-- Таблица roles_employee
-- Создать таблицу roles_employee (id. Serial  primary key | employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id) | role_id. Int, not null (внешний ключ для таблицы roles, поле id)
                    
                  create table roles_employee(
                  id serial primary key,
                  employee_id int not null unique,
                  role_id int not null,
                  foreign key (employee_id)
                  references employees(id),
                  foreign key(role_id)
                  references roles(id)
                  );
                 
                 
-- Наполнить таблицу roles_employee 40 строками

                 insert into roles_employee(employee_id, role_id)
                 values (67, 5),
                        (20, 22),
                        (3, 9),
                        (5, 6),
                        (23, 7),
                        (16, 21),
                        (7, 8),
                        (19, 15),
                        (18, 19),
                        (56, 17),
                        (28, 5),
                        (33, 20),
                        (70, 18),
                        (60, 14),
                        (50, 16),
                        (40, 8),
                        (30, 10),
                        (24, 14),
                        (10, 16),
                        (1, 18),
                        (4, 20),
                        (9, 16),
                        (8, 18),
                        (11, 14),
                        (36, 13),
                        (46, 7),
                        (58, 8),
                        (13, 12),
                        (29, 8),
                        (39, 14),
                        (42, 6),
                        (68, 9),
                        (22, 17),
                        (37, 16),
                        (17, 7),
                        (62, 5),
                        (32, 11),
                        (14, 12),
                        (55, 13),
                        (64, 14);
                        
                       select * from roles_employee;
