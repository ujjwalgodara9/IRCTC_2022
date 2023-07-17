use irctc;

/*CREATE USER 'customer'@'localhost' IDENTIFIED BY '12345678';*/
CREATE USER 'customer'@'localhost' IDENTIFIED BY '12345678';

create view passenger_view as select passengers.name, passengers.gender, passengers.age, passengers.pnr,
tickets.trainno, tickets.fare, tickets.departuredatetime, tickets.arrivaldatetime from passengers 
inner join tickets where passengers.pnr = tickets.pnr;


create view admin_view as select passengers.name, passengers.gender, passengers.age, passengers.pnr,
tickets.trainno, tickets.fare, tickets.departuredatetime, tickets.arrivaldatetime, station.stationname, station.code, station.location,
 trains.trainno, trains.trainname,trains.departuredateandtime,trains.totalseats,trains.source,trains.destination, 
 user.name, user.age,user.userid,user.ponenumber,user.password from passengers 
inner join tickets  
inner join trains 
inner join user
inner join stations
where passengers.pnr = tickets.pnr &
tickets.trainno = trains.trainno;



/*do grant for all tables*/
GRANT INSERT, UPDATE, DELETE, SELECT
ON passengers
TO admin@localhost;

GRANT INSERT, UPDATE, DELETE, SELECT
ON stations
TO admin@localhost;

GRANT INSERT, UPDATE, DELETE, SELECT
ON tickets
TO admin@localhost;

GRANT INSERT, UPDATE, DELETE, SELECT
ON trains
TO admin@localhost;

GRANT INSERT, UPDATE, DELETE, SELECT
ON user
TO admin@localhost;

/*for user*/
GRANT DELETE, SELECT
ON passengers
TO customer@localhost;

GRANT DELETE, SELECT
ON tickets
TO customer@localhost;

GRANT SELECT
ON stations
TO customer@localhost;

GRANT SELECT
ON trains
TO customer@localhost;








