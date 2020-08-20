--1
select Dependent_name,D.Sex , E.Sex 
from Dependent D inner join Employee E on D.ESSN=E.SSN
where E.Sex='f'
union
select Dependent_name,D.Sex , E.Sex 
from Dependent D inner join Employee E on D.ESSN=E.SSN
where E.Sex='m'

--2
select Project.Pname,sum(Works_for.Hours*7)
from Project  join Works_for on Project.Pnumber=Works_for.Pno
group by Project.Pname

--3
select D.* from Departments D 
where D.Dnum in (select min(E.Dno) from Employee E where E.Dno is not null)

--4
select D.Dname ,avg(salary)as average,max(salary) as maximum , min(salary) as minimum
from Employee E join Departments D on E.Dno=D.Dnum
group by D.Dname

--5
Select *  
From Employee where SSN  in(select Departments.mgrssn from Departments) 
And ssn not in ( select Departments.MGRSSN from Departments) 

--6
select dno , fname , count(dno)
from Employee e
group by e.Dno,e.Fname
having avg(salary)<(select avg(salary) from Employee)

--7
select dname ,lname, fname,pname
from Departments D,Employee E, Works_for W,Project P
where dno=Dno and E.SSN=W.ESSn and W.Pno=P.Pnumber
order by Dname desc ,Lname asc , Fname asc

--8
select max(salary)from Employee
where salary not in (select max(salary) from Employee)

--9
select fname,lname
from Employee
where exists (select * from Dependent where SSN=ESSN)

--10
update Departments set MGRSSN=968574 where Dnum=100
update Departments set MGRSSN=102672 where Dnum=20
update Employee set Superssn=968574 where SSN=102672

--11
update Departments set MGRSSN=102672 where MGRSSN=223344
update Employee set Superssn=102672 where Superssn=223344
delete from Dependent where ESSN=223344
delete from Works_for where ESSN=223344
delete from Employee where SSN=223344

--12
update Employee set Salary=Salary+Salary*0.3
where Employee.SSN in (select essn from Works_for inner join Project P
on P.Pnumber=Works_for.Pno where Pname='AlRabwah')



