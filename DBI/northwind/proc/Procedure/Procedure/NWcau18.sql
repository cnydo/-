create proc cau18
as
select LastName + ' ' + FirstName 'Full name', TitleOfCourtesy, Case when TitleOfCourtesy = 'Mr.' then 'M' else IIF(TitleOfCourtesy = 'Mrs.' or TitleOfCourtesy = 'Ms.', 'F', 'N/A') end as sex
from Employees where TitleOfCourtesy = 'Mr.' or TitleOfCourtesy ='Dr.' or TitleOfCourtesy = 'Ms.' or TitleOfCourtesy = 'Mrs.' order by case when TitleOfCourtesy = 'Mr.' then 1 when TitleOfCourtesy in ('Mrs.', 'Ms.') then 2 else 3 end asc, EmployeeID asc

exec cau18