select * from genre

insert into artist
values(null,'imagine dragons','2000')

insert into album
values(null,'evolve','2017','2000','SONY',28,7)

insert into song
values(null,'walk the line','2017','2.33',7,28,23)

select s.title, al.title, ar.artistname
from song s left join album al on s.albumid=al.albumid
left join artist ar on ar.artistid = al.artistid
where ar.artistname="imagine dragons"

select a.title , count(*)
from song s join album a on s.albumid = a.albumid
group by a.title

select a.artistname, count(*)
from song s join artist a on s.artistid = a.artistid
group by a.artistname

select g.label, count(*)
from song s join genre g on s.genreid=g.genreid
group by g.label

select title, max(albumlength)
from album

select s.title, a.title, max(s.songlength)
from song s join album a on s.albumid = a.albumid






 