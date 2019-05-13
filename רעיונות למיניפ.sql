select WORKERID, WORKERWAGE
from OEHRLICH.WORKERS
where WORKERTASK =  'food seller'

select distinct PROVIDERID, EQUIPMENTNAME
from OEHRLICH.PROVIDER NATURAL JOIN OEHRLICH.EQUIPMENTFORPROVIDER NATURAL JOIN OEHRLICH.EQUIPMENT 
WHERE PROVIDERPAYMENT < 300
	
select FOODNAME, max(FOODPRICE)
from OEHRLICH.FOOD
group by FOODNAME

SELECT foodname, COUNT(providerid) 
FROM oehrlich.food F1 natural join oehrlich.foodforprovider F2 natural join oehrlich.provider F3
WHERE F1.FOODID = F2.RECEPTIONID and foodprice < 30
GROUP BY foodname

select P.providerid, P.providerpayment
from OEHRLICH.PROVIDER P
where P.providerpayment = (select max(P2.providerpayment)
                          from OEHRLICH.PROVIDER P2)

						  
select costumerid, costumeremail
from OEHRLICH.costumer
where costumeremail like '%.il'

select ticketid, moviename, releaseDate
from oehrlich.tickets natural join oehrlich.ticketfortheatre natural join oehrlich.theater
     natural join oehrlich.Ticketformovies natural join oehrlich.movies
where ticketstatus = 'Active' and vip = 'YES'

select ticketid, moviename, releaseDate
from oehrlich.tickets natural join oehrlich.ticketfortheatre natural join oehrlich.theater
     natural join oehrlich.Ticketformovies natural join oehrlich.movies
where ticketChair > 50 and  ticketChair < 100 and ticketLine = 15 and numofchairs < 100