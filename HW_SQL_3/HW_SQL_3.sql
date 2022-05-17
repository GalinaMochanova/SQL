HW_SQL_3

-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.employee_name, salary.monthly_salary  from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000

select employees.employee_name, salary.monthly_salary  from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� �������� (�� ����, �� �� ������� ��� � ��������)

select salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id 
where employees.employee_name is null; 


-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� �������� (�� ����, �� �� ������� ��� � ��������)
select salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id
where (employees.employee_name is null and salary.monthly_salary < 2000);

-- 5. ����� ���� ���������� ���� �� ��������� ��
select employees.employee_name, salary.monthly_salary  from salary
join employee_salary on employee_salary.salary_id = salary.id 
right join employees on employee_salary.salary_id = employees.id
where salary.monthly_salary is null;


-- 6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

-- 7. ������� ����� � ��������� ������ Java �������������
select employees.employee_name, roles.role_name  from roles_employee
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java_developer%';



-- 8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python_developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from employees
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA engineer%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from employees
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA engineer%';

-- 11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from employees
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA engineer%';

-- 12. ������� ����� � �������� Junior ������������
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employees.employee_name, salary.monthly_salary  from employees
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employees.employee_name, salary.monthly_salary  from employees
join roles_employee on roles_employee.id = employees.id
join roles on roles.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Senior%';

-- 15. ������� �������� Java �������������

select salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Java_developer%';


-- 16. ������� �������� Python �������������
select salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Python_developer%';

-- 17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name = 'Junior_Python_developer';

-- 18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name = 'Middle_JavaScript_developer';

-- 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name = 'Senior_Java_developer';

-- 20. ������� �������� Junior QA ���������
select employees.employee_name, salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior% %QA engineer%';

-- 21. ������� ������� �������� ���� Junior ������������
select AVG(salary.monthly_salary) from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%JavaScript_developer%';

-- 23. ������� ����������� �� QA ���������
select min(salary.monthly_salary) from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior% %QA engineer%';

-- 24. ������� ������������ �� QA ���������
select max(salary.monthly_salary) from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior% %QA engineer%';

-- 25. ������� ���������� QA ���������
select count(roles.role_name) from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 26. ������� ���������� Middle ������������.
select count(roles.role_name) from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 27. ������� ���������� �������������
select count(roles.role_name) from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
order by salary.monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

--  31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;


 