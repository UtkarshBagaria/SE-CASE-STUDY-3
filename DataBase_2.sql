--COMPARTMENT TABLE:
INSERT INTO `461_compartment` (`compartment_no`, `compartment_type`, `capacity`, `availability`, `train_number`) VALUES
('F01', 'I Class', 16, 0, 25260),
('F01', 'I Class', 16, 0, 25261),
('F01', 'I Class', 16, 4, 58450),
('F01', 'I Class', 16, 5, 58451),
('F01', 'I Class', 16, 15, 62620),
('F01', 'I Class', 16, 6, 62621),
('F02', 'I Class', 16, 0, 62620),
('G01', 'III Class', 60, 33, 25261),
('G01', 'III Class', 60, 2, 58450),
('G01', 'III Class', 60, 40, 58451),
('G01', 'III Class', 60, 10, 62621),
('G02', 'III Class', 60, 45, 25261),
('G02', 'III Class', 60, 12, 62621),
('S01', 'II Class', 30, 15, 25260),
('S01', 'II Class', 30, 15, 25261),
('S01', 'II Class', 30, 5, 58450),
('S01', 'II Class', 30, 4, 62621),
('S02', 'II Class', 30, 17, 25260),
('S02', 'II Class', 30, 3, 58450),
('S02', 'II Class', 30, 6, 62621);

--FARE TABLE:
INSERT INTO `461_fare` (`train_type`, `compartment_type`, `fare_per_km`) VALUES
('Fast', 'I Class', 3),
('Mail', 'I Class', 2),
('Superfast', 'I Class', 3),
('Fast', 'II Class', 2),
('Mail', 'II Class', 1),
('Superfast', 'II Class', 2),
('Fast', 'III Class', 1),
('Mail', 'III Class', 1),
('Superfast', 'III Class', 1);

--PAYMENT_INFO TABLE:
INSERT INTO `461_payment_info` (`transaction_no`, `bank`, `card_no`, `price`, `pnr`) VALUES
(146445, 'HDFC', '1.23433E+15', NULL, 'PNR006'),
(243535, 'UNION BANK', '2.43647E+15', NULL, 'PNR012'),
(342344, 'IOB', '5.62357E+15', NULL, 'PNR001'),
(354364, 'CANARA BANK', '5.76879E+15', NULL, 'PNR014'),
(531343, 'SBI', '8.95327E+15', NULL, 'PNR004'),
(576768, 'ICICI', '7.56356E+15', NULL, 'PNR007'),
(676756, 'CANARA BANK', '7.36756E+15', NULL, 'PNR002'),
(746745, 'KOTAK', '2.54564E+15', NULL, 'PNR008'),
(758900, 'UNION BANK', '2.43266E+15', NULL, 'PNR015'),
(867546, 'UNION BANK', '4.65769E+15', NULL, 'PNR010'),
(867547, 'SBI', '7.46635E+15', NULL, 'PNR011'),
(978098, 'INDIAN BANK', '9.88733E+15', NULL, 'PNR005'),
(978776, 'UNION BANK', '1I54978597435874', NULL, 'PNR003');

--ROUTE_INFO TABLE:
INSERT INTO `461_route_info` (`from_station_no`, `to_station_no`, `from_station_name`, `to_station_name`, `distance`, `train_no`) VALUES
(1, 2, 'Mangaluru', 'Kannur', 131, 25260),
(1, 3, 'Mangaluru', 'Palakkad', 351, 25260),
(1, 4, 'Mangaluru', 'Chennai', 481, 25260),
(2, 3, 'Kannur ', 'Palakkad', 220, 25260),
(2, 4, 'Kannur ', 'Chennai', 350, 25260),
(4, 4, 'Palakkad', 'Chennai', 130, 25260),
(1, 2, 'Chennai', 'Palakkad', 130, 25261),
(1, 3, 'Chennai', 'Kannur', 350, 25261),
(1, 4, 'Chennai', 'Mangaluru', 481, 25261),
(2, 3, 'Palakkad', 'Kannur', 220, 25261),
(2, 4, 'Palakkad', 'Mangaluru', 351, 25261),
(3, 4, 'Kannur ', 'Mangaluru', 131, 25261),
(1, 2, 'Mangaluru', 'Subramanya', 195, 58450),
(1, 3, 'Mangaluru', 'Mysore', 365, 58450),
(1, 4, 'Mangaluru', 'Bengaluru', 504, 58450),
(2, 3, 'Subramanya', 'Mysore', 170, 58450),
(2, 4, 'Subramanya', 'Bengaluru', 309, 58450),
(3, 4, 'Mysore', 'Bengaluru', 139, 58450),
(1, 2, 'Bengaluru', 'Mysore', 139, 58451),
(1, 3, 'Bengaluru', 'Subramanya', 309, 58451),
(1, 4, 'Bengaluru', 'Mangaluru', 503, 58451),
(2, 3, 'Mysore', 'Subramanya', 170, 58451),
(2, 4, 'Mysore', 'Mangaluru', 364, 58451),
(3, 4, 'Subramanya', 'Mangaluru', 194, 58451),
(1, 2, 'Chennai', 'Sholingur', 90, 62620),
(1, 3, 'Chennai', 'Katpadi', 129, 62620),
(1, 4, 'Chennai', 'Bangarpet', 290, 62620),
(1, 5, 'Chennai', 'Bengaluru', 361, 62620),
(2, 3, 'Sholingur', 'Katpadi', 39, 62620),
(2, 4, 'Sholingur', 'Bangarpet', 200, 62620),
(2, 5, 'Sholingur', 'Chennai', 271, 62620),
(3, 4, 'Katpadi', 'Bangarpet', 161, 62620),
(3, 5, 'Katpadi', 'Chennai', 232, 62620),
(4, 5, 'Bangarpet', 'Bengaluru', 71, 62620),
(1, 2, 'Bengaluru', 'Bangarpet', 71, 62621),
(1, 3, 'Bengaluru', 'Katpadi', 232, 62621),
(1, 4, 'Bengaluru', 'Sholigur', 272, 62621),
(1, 5, 'Bengaluru', 'Chennai', 362, 62621),
(2, 3, 'Bangarpet', 'Katpadi', 161, 62621),
(2, 4, 'Bangarpet', 'Sholigur', 201, 62621),
(2, 5, 'Bangarpet', 'Chennai', 291, 62621),
(3, 4, 'Katpadi', 'Sholigur', 40, 62621),
(3, 5, 'Katpadi', 'Chennai', 130, 62621),
(4, 5, 'Sholingur', 'Chennai', 90, 62621);

--TICKET TABLE:
INSERT INTO `461_ticket` (`pnr`, `train_no`, `travel_date`, `departure`, `arrival`, `departure_time`, `arrival_time`, `passenger_id`, `train_type`, `compartment_type`, `compartment_no`) VALUES
('PNR001', 62621, '2022-08-07', 'Bengaluru', 'Chennai', '16:00:00', '20:30:00', 'ADM_001', 'Superfast', 'I Class', 'F01'),
('PNR002', 62620, '2022-08-14', 'Chennai', 'Bengaluru', '08:00:00', '12:25:00', 'ADM_001', 'Superfast', 'I Class', 'F02'),
('PNR003', 25261, '2022-08-01', 'Chennai', 'Mangaluru', '18:00:00', '07:30:00', 'ADM_003', 'Mail', 'III Class', 'G02'),
('PNR004', 25260, '2022-08-15', 'Mangaluru', 'Chennai', '19:15:00', '08:00:00', 'ADM_003', 'Mail', 'II Class', 'S02'),
('PNR005', 58451, '2022-08-03', 'Bengaluru', 'Mangaluru', '06:00:00', '14:00:00', 'USR_002', 'Fast', 'III Class', 'G01'),
('PNR006', 58450, '2033-08-04', 'Mangaluru', 'Bengaluru', '08:00:00', '10:15:00', 'USR_002', 'Fast', 'II Class', 'S01'),
('PNR007', 62621, '2022-08-07', 'Bangarpet', 'Chennai', '18:00:00', '20:30:00', 'ADM_002', 'Superfast', 'II Class', 'S01'),
('PNR008', 62620, '2022-08-02', 'Chennai', 'Bangarpet', '08:00:00', '09:00:00', 'ADM_002', 'Superfast', 'I Class', 'F01'),
('PNR010', 25260, '2022-08-19', 'Mangaluru', 'Kannur', '19:15:00', '23:15:00', 'USR_007', 'Mail', 'II Class', 'S01'),
('PNR011', 62621, '2022-08-22', 'Katapadi', 'Chennai', '19:00:00', '20:30:00', 'USR_008', 'Superfast', 'I Class', 'F01'),
('PNR012', 58451, '2022-08-11', 'Subramanya', 'Mangaluru', '11:00:00', '14:00:00', 'USR_009', 'Fast', 'I Class', 'F01'),
('PNR014', 25260, '2022-08-17', 'Kannur', 'Palakkad', '23:15:00', '04:30:00', 'USR_010', 'Mail', 'II Class', 'S01'),
('PNR015', 25260, '2022-08-05', 'Palakkad', 'Chennai', '04:30:00', '08:00:00', 'USR_012', 'Mail', 'II Class', 'S01');

--INSERTING VALUES USING THE LOAD DATA LOCAL INFILE COMMAND:

--TICKET_PASSENGER TABLE:
LOAD DATA LOCAL INFILE
'D:/Tanvi/PES/Sem5/301_DBMS/Lab/lab 4/data/Ticket-Passenger.csv'
INTO TABLE 461_ticket_passenger
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"    
IGNORE 1 LINES;

--TRAIN INFO TABLE:
LOAD DATA LOCAL INFILE
'D:/Tanvi/PES/Sem5/301_DBMS/Lab/lab 4/data/Train.csv'
INTO TABLE 461_train
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"    
IGNORE 1 LINES;

--TRAIN_USER PASSENGER TABLE:
LOAD DATA LOCAL INFILE
'D:/Tanvi/PES/Sem5/301_DBMS/Lab/lab 4/data/Train_User.csv'
INTO TABLE 461_train_user
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

--USER_PHONE TABLE:
LOAD DATA LOCAL INFILE
'D:/Tanvi/PES/Sem5/301_DBMS/Lab/lab 4/data/User-Phone.csv'
INTO TABLE 461_user_phone
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"    
IGNORE 1 LINES;

--USER_TRAIN TABLE:
LOAD DATA LOCAL INFILE
'D:/Tanvi/PES/Sem5/301_DBMS/Lab/lab 4/data/User-Train.csv'
INTO TABLE 461_user_train
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

----------------------------:
-- QUERIES:

--Q1:
UPDATE 461_train_user SET age = year(curdate()) - year(dob);
--Q2:
SELECT * FROM 461_route_info WHERE distance>=70 AND DISTANCE <=150;
--Q3:
SELECT * FROM 461_route_info WHERE to_station_name="sholingur" AND from_station_name = "Chennai";
--Q4:
SELECT * FROM 461_train WHERE train_type != 'mail';
--Q5:
SELECT train_name FROM 461_train WHERE destination="chennai" AND source="bengaluru";
--Q6:
SELECT train_no, train_type FROM 461_ticket WHERE departure="chennai" AND departure_time>='08:00:00';
--Q7:
SELECT * FROM 461_train_user WHERE dob>'1980/01/01' AND dob<'1990/01/01';
--Q8:
SELECT * FROM 461_train_user WHERE firstname like 'S%';
--Q9:
SELECT compartment_type, availability, compartment_no FROM 461_compartment WHERE train_number=62621 AND compartment_type='I Class';
--Q10:
SELECT pnr, transaction_no FROM 461_payment_info WHERE bank="Union Bank";
----------------------------:
create user 'user_pes1ug20cs461'@'localhost' identified by 'user_pes1ug20cs461'; 
--TASK 2 - QUESTION 1:
GRANT ALL PRIVILEGES ON pes1ug20cs461_railway_reservation.461_train_user TO 'user_pes1ug20cs461'@'localhost';

GRANT SELECT, UPDATE, INSERT, DELETE ON pes1ug20cs461_railway_reservation.461_train TO 'user_pes1ug20cs461'@'localhost';

GRANT ALL PRIVILEGES ON pes1ug20cs461_railway_reservation.461_ticket TO 'user_pes1ug20cs461'@'localhost';

SHOW GRANTS FOR 'user_pes1ug20cs461'@'localhost';

--TASK 2 - QUESTION 2:
REVOKE SELECT, UPDATE, INSERT, DELETE ON pes1ug20cs461_railway_reservation.461_ticket FROM 'user_pes1ug20cs461'@'localhost';

SELECT * FROM 461_ticket;

DELETE FROM 461_ticket WHERE Departure='Bengaluru';

UPDATE 461_ticket set departure = 'Blore' where departure = 'Bengaluru'; 

--TASK 2 - QUESTION 3:
set autocommit=0;

start transaction;

savepoint firstsp461;
INSERT INTO 461_train VALUES (11111, 'Blore Fast', 'Fast', 'Chennai', 'Bengaluru', 'Yes');

select * from 461_train where train_no=11111;
rollback to firstsp461;

select * from 461_train where train_no=11111;
select * from 461_train;

savepoint secondsp461;
select * from 461_train;
savepoint secondsp461;

INSERT INTO 461_train VALUES (12345, 'CM SuperFast', 'Super-fast', 'Chennai', 'Mangaluru', 'Yes');
select * from 461_train;
savepoint secondsp461;

delete from 461_train where train_no = 12345;
rollback to secondsp461;
select * from 461_train where train_no = 12345;

----------------------------:
--COMPLETE: