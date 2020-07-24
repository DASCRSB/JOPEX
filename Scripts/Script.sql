/* In order to have a real sense of the outputs my queries would didplay, I have proceeded to add some hypothetical data into each table that fit the context of the database */
CREATE database wave;

CREATE TABLE users (
u_id integer PRIMARY KEY,
name text NOT NULL,
mobile text NOT NULL,
wallet_id integer NOT NULL,
when_created timestamp without time zone NOT NULL
-- more stuff :)
);

insert into users (u_id, name, mobile , wallet_id , when_created) values
(1, 'Ama', '0101', 101, '2014-02-20 09:27:20'),
(2, 'Benedicta', '0102', 102, '2014-02-15 12:50:55'),
(3, 'Koku', '0103', 103, '2014-02-09 10:41:32'),
(4, 'Wisdom', '0201', 201, '2014-02-21 09:01:26'),
(5, 'Akide', '0202', 202, '2014-02-05 11:00:00'),
(6, 'Olade', '0203', 203, '2014-02-27 14:05:07'),
(7, 'Temi', '0204', 204, '2014-02-01 13:18:37'),
(8, 'Joe', '0301', 301, '2014-02-03 15:03:27'),
(9, 'Martha', '0302', 302, '2014-02-17 09:23:50'),
(10, 'Nana', '0303', 303, '2014-02-24 09:00:00');

update users set when_created = '2018-01-20 09:27:20' where u_id = '1'; 
update users set when_created = '2018-02-15 12:50:55' where u_id = '2'; 
update users set when_created = '2018-03-09 10:41:32' where u_id = '3'; 
update users set when_created = '2018-01-21 09:01:26' where u_id = '4'; 
update users set when_created = '2018-02-05 11:00:00' where u_id = '5'; 
update users set when_created = '2018-03-27 14:05:07' where u_id = '6'; 
update users set when_created = '2018-01-01 13:18:37' where u_id = '7'; 
update users set when_created = '2018-02-03 15:03:27' where u_id = '8'; 
update users set when_created = '2018-03-17 09:23:50' where u_id = '9'; 
update users set when_created = '2018-01-24 09:00:00' where u_id = '10'; 

select * from users;

CREATE TABLE transfers (
transfer_id integer PRIMARY KEY,
u_id integer NOT NULL,
source_wallet_id integer NOT NULL,
dest_wallet_id integer NOT NULL,
send_amount_currency text NOT NULL,
send_amount_scalar numeric NOT NULL,
receive_amount_currency text NOT NULL,
receive_amount_scalar numeric NOT NULL,
kind text NOT NULL,
dest_mobile text,
dest_merchant_id integer,
when_created timestamp without time zone NOT NULL
-- more stuff :)
);

insert into transfers (transfer_id, u_id, source_wallet_id, dest_wallet_id , send_amount_currency , send_amount_scalar , receive_amount_currency ,receive_amount_scalar ,kind , dest_mobile, dest_merchant_id , when_created) values
(700, 1, 600, 601, 'CFA', 75000, 'CFA', 75000, 'school fees', '00101', 800, '2018-01-20 09:27:20'),
(701, 2, 610, 611, 'CFA', 120000, 'CFA', 120000, 'plumber', '00102', 801, '2018-02-15 12:50:55'),
(702, 3, 620, 621, 'CFA', 3000, 'CFA', 3000, 'fish', '00103', 802, '2018-03-09 10:41:32'),
(703, 4, 630, 631, 'NGN', 13567, 'NGN', 13567, 'fuel', '00201', 803, '2018-01-21 09:01:26'),
(704, 5, 640, 641, 'NGN', 56434, 'NGN', 56434, 'house furniture', '00202', 804, '2018-02-05 11:00:00'),
(705, 6, 650, 651, 'NGN', 356657, 'NGN', 356657, 'cement', '00203', 805, '2018-03-27 14:05:07'),
(706, 7, 660, 661, 'NGN', 905, 'NGN', 905, 'water bill', '00204', 806, '2018-01-01 13:18:37'),
(707, 8, 670, 671, 'GHS', 150, 'GHS', 150, 'gardener', '00301', 807, '2018-02-03 15:03:27'),
(708, 9, 680, 681, 'GHS', 450, 'GHS', 450, 'pocket money', '00302', 808, '2018-03-17 09:23:50'),
(709, 10, 690, 691, 'GHS', 2000, 'GHS', 2000, 'security man', '00303', 809, '2018-01-24 09:00:00');



update transfers set dest_wallet_id = 601 where u_id = '1'; 
update transfers set when_created = '2018-01-20 09:27:20'  where u_id = '1';

select * from transfers;

delete from transfers where u_id = '1';

CREATE TABLE agents (
agent_id integer PRIMARY KEY,
name text,
country text NOT NULL,
region text,
city text,
subcity text,
when_created timestamp without time zone NOT NULL
-- more stuff :)
);

CREATE TABLE agent_transactions (
atx_id integer PRIMARY KEY,
u_id integer NOT NULL,
agent_id integer NOT NULL,
amount numeric NOT NULL,
fee_amount_scalar numeric NOT NULL,
when_created timestamp without time zone NOT NULL
-- more stuff :)
);

insert into agent_transactions (atx_id ,u_id ,agent_id ,amount ,fee_amount_scalar ,when_created ) values
(330, 1, 315, 75000,0, '2018-01-20 09:27:20'),
(331, 2, 316, 120000,0, '2018-02-15 12:50:55'),
(332, 3, 317, 3000,0, '2018-03-09 10:41:32'),
(333, 4, 318, 13567,0, '2018-01-21 09:01:26'),
(334, 5, 319, 56434,0, '2018-02-05 11:00:00'),
(335, 6, 320, 356657,0, '2018-03-27 14:05:07'),
(336, 7, 321,  905,0, '2018-01-01 13:18:37'),
(337, 8, 322,150,0, '2018-02-03 15:03:27'),
(338, 9, 323, 450,0, '2018-03-17 09:23:50'),
(339, 10, 324, 2000,0, '2018-01-24 09:00:00');

select * from agent_transactions;
select count(atx_id), extract(month from when_created ) from agent_transactions where when_created <= '2018-12-31' group by extract (month from when_created);  

select DATENAME (MONTH, DATEADD(MONTH, MONTH(when_created) - 1, '1900-01-01') month from agent_transactions;

CREATE TABLE wallets (
wallet_id integer PRIMARY KEY,
currency text NOT NULL,
ledger_location text NOT NULL,
when_created timestamp without time zone NOT NULL
-- more stuff :)
);

--question 1. The u_id attribute is passed into the count function, since all the counts of u_id give all the number of instances of users in the tabke--
select count(u_id) from users; 

--question2--
select count(transfer_id) from transfers where send_amount_currency = 'CFA';

--question 3-- 
select count(u_id) from transfers where send_amount_currency = 'CFA';
select count(u_id), send_amount_currency  from transfers group by send_amount_currency;

--question 4--


--select transfers.u_id, users."name", transfers.send_amount_currency from transfers inner join users on transfers.u_id = users.u_id;--

