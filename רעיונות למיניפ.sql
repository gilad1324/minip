select WORKERID
from OEHRLICH.WORKERS
where WORKERTASK =  'food seller'

select EQUIPMENTNAME
from OEHRLICH.PROVIDER NATURAL JOIN OEHRLICH.EQUIPMENTFORPROVIDER NATURAL JOIN OEHRLICH.EQUIPMENT 
WHERE PROVIDERPAYMENT < 300
	
select FOODNAME, max(FOODPRICE)
from OEHRLICH.FOOD
group by FOODNAME

SELECT foodname, COUNT(providerid) 
FROM oehrlich.food natural join oehrlich.foodforprovider natural join oehrlich.provider
WHERE foodprice < 30
GROUP BY foodname

select P.providerid, P.providerpayment
from OEHRLICH.PROVIDER P
where P.providerpayment = (select max(P2.providerpayment)
                          from OEHRLICH.PROVIDER P2)

						  
select costumerid from OEHRLICH.costumer
where costumeremail like '%.il'

select ticketid
from oehrlich.tickets natural join oehrlich.ticketfortheatre natural join oehrlich.theater
where ticketstatus = 'Active' and vip = 'YES'

select ticketid
from oehrlich.tickets natural join oehrlich.ticketfortheatre natural join oehrlich.theater
where ticketChair > 50 and  ticketChair < 100 and ticketLine = 15 and numofchairs < 100

