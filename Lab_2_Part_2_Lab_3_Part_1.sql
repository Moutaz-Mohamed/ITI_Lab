use Company_SD
--1--
Select * from employee

--2--
Select Fname, lname, Salary, dno from employee

--3--
select Pname, Plocation from Project where Dnum = Pnumber

--4--
Select Fname +' '+ lname as fullname, salary*0.10 as ANNUALCOMM from employee

--5--
Select ssn, fname from employee where salary>1000

--6--
Select ssn, fname from employee where salary*12>10000

--7--
Select fname, salary from employee where sex='f'

--8--
Select Dnum, Dname from Departments where mgrssn=968574

--9--
Select Pnumber, pname,plocation from Project where Dnum=10

--day3--p1--
--1--
Select Dnum, Dname, mgrssn, fname
From Departments , Employee where Employee.SSN = Departments.dnum

--2--
Select pname, dname from Departments, project where Departments.dnum = project.Pnumber

--3--
Select Departments.*, Fname from Departments, employee where Departments.MGRSSN = . employee.ssn

--4--
Select Pnumber, pname, plocation from project where city in ('cairo' , 'alex')

--5--
Select * from project where Pname like 'a%'

--6--
select * from employee inner join Departments on dnum = 30 where salary between 1000 and 2000

--7--
Select x.fname from employee x, employee y where y.SSN = x.Superssn and concat(y.fname ,' ' , y.lname )like 'Kamel Mohamed'

--8--
Select fname, pname from employee inner join Works_for on ssn=essn
Inner join project on pno = Pnumber order by pname

--9--
Select Pnumber, dname, Lname, address, bdate
From project, Departments, employee
Where project.dnum = Departments.dnum and employee.SSN= Departments.MGRSSN and city like'cairo'

--10--
Select * from employee, Departments where Departments.MGRSSN = employee.ssn

--11--
Select *, * from employee, Departments

--12--
Insert into Employee  
values(31,102678, 112233)

--13--
Insert into employee (dno,ssn)
Values (31, 102661)

--14--
Insert into Departments(dname, dnum, mgrssn, [MGRStart Date])
Values ('DEPT IT', 101, 112233, 1-11-2006)

--15--
select Fname +' '+ lname as ful from Employee
order by Fname,Lname

