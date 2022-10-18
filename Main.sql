-- Q1
create view v1 as select pes1ug20cs477_ticket.PNR,pes1ug20cs477_ticket.train_no,pes1ug20cs477_ticket.Departure,pes1ug20cs477_ticket.Arrival,pes1ug20cs477_route_info.distance,pes1ug20cs477_fare.fare_per_km from pes1ug20cs477_ticket,pes1ug20cs477_route_info,pes1ug20cs477_fare where (pes1ug20cs477_ticket.train_no=pes1ug20cs477_route_info.train_no and pes1ug20cs477_ticket.Departure = pes1ug20cs477_route_info.From_station_name and pes1ug20cs477_ticket.Arrival = pes1ug20cs477_route_info.To_station_name and pes1ug20cs477_fare.train_type = pes1ug20cs477_ticket.train_type and pes1ug20cs477_fare.compartment_type = pes1ug20cs477_ticket.compartment_type);

create view v2 as select pnr, count(pnr) as number from pes1ug20cs477_ticket_passenger group by pnr;

update pes1ug20cs477_payment_info as p INNER JOIN v1 on p.pnr = v1.pnr INNER JOIN v2 on v1.pnr = v2.pnr set p.price = v1.distance * v1.fare_per_km * v2.number;


-- Q2 Natural join
select source, destination, distance from pes1ug20cs477_train natural join pes1ug20cs477_route_info where source=from_station_name and destination=to_station_name;


-- Inner join
-- Q3
select firstname, lastname from pes1ug20cs477_train_user as user inner join (select * from pes1ug20cs477_ticket natural join pes1ug20cs477_payment_info where pes1ug20cs477_ticket.pnr=pes1ug20cs477_payment_info.pnr) as i where user.user_id=i.passenger_id and i.price > 500;

-- Q4
select train_no from pes1ug20cs477_train inner join pes1ug20cs477_compartment where source="Bengaluru" and destination="Chennai" and train_no=train_number and pes1ug20cs477_compartment.availability>10;

-- Left outer join
--Q5
select firstname, lastname, dob, pnr from pes1ug20cs477_train_user left outer join pes1ug20cs477_ticket on pes1ug20cs477_train_user.user_id=pes1ug20cs477_ticket.passenger_id;

-- Q6
select firstname, lastname, dob, pnr from pes1ug20cs477_train_user left outer join pes1ug20cs477_ticket on pes1ug20cs477_train_user.user_id=pes1ug20cs477_ticket.passenger_id where pnr is null;

-- Right outer join
-- Q7
select pnr, train_no, travel_date, firstname, lastname from pes1ug20cs477_ticket right outer join pes1ug20cs477_train_user on pes1ug20cs477_ticket.passenger_id=pes1ug20cs477_train_user.user_id;

-- Q8
select distinct user_id, pes1ug20cs477_user_train.train_id, train_name from pes1ug20cs477_user_train right outer join pes1ug20cs477_train on pes1ug20cs477_user_train.train_id=pes1ug20cs477_train.train_no;

-- Nested queries
-- Q9
select train_no, train_name from pes1ug20cs477_train where destination!="Mangaluru" and train_no not in ( select pes1ug20cs477_route_info.train_no from pes1ug20cs477_route_info left outer join pes1ug20cs477_ticket on pes1ug20cs477_route_info.train_no=pes1ug20cs477_ticket.train_no where distance < 100 and departure and departure_time=TIME('8:30:00') union select pes1ug20cs477_route_info.train_no from pes1ug20cs477_route_info right outer join pes1ug20cs477_ticket on pes1ug20cs477_route_info.train_no=pes1ug20cs477_ticket.train_no where distance < 100 and departure and departure_time=TIME('8:30:00') );

-- Q10
select passenger_id from pes1ug20cs477_ticket join pes1ug20cs477_payment_info on pes1ug20cs477_ticket.pnr=pes1ug20cs477_payment_info.pnr where pes1ug20cs477_payment_info.price>(select AVG(pes1ug20cs477_payment_info.price) from pes1ug20cs477_payment_info);
