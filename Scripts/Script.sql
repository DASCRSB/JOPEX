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

update users set when_created = '2020-06-09 10:41:32' where u_id = '3';
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
update users set when_created = '2020-07-24 09:00:00'  where u_id = '10';


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


update transfers set when_created = '2020-06-09 10:41:32' where u_id = '3';
update transfers set send_amount_scalar = '12000000' where u_id = '3';
update transfers set receive_amount_scalar = '12000000' where u_id = '3';
update transfers set dest_wallet_id = 601 where u_id = '1'; 
update transfers set when_created = '2018-01-20 09:27:20'  where u_id = '1';
update transfers set kind = 'P2P' where u_id = '1';
update transfers set kind = 'W2M' where u_id = '2';
update transfers set kind = 'P2P' where u_id = '3';
update transfers set kind = 'W2M' where u_id = '4';
update transfers set kind = 'P2P' where u_id = '5';
update transfers set kind = 'W2M' where u_id = '6';
update transfers set kind = 'P2P' where u_id = '7';
update transfers set kind = 'W2M' where u_id = '8';
update transfers set kind = 'P2P' where u_id = '9';
update transfers set kind = 'W2M' where u_id = '10';

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

insert into agents (agent_id ,"name" ,country ,region, city, when_created) values
(315, 'Louis', 'Benin', 'Alibori', 'Kandi','2018-01-20 09:27:20'),
(316, 'Grace', 'Benin', 'Zou', 'Za-Kpota','2018-02-15 12:50:55'),
(317, 'Henry', 'Benin', 'Donga', 'Djougou','2018-03-09 10:41:32'),
(318, 'Faith', 'Nigeria', 'Lagos', 'Ejibgo','2018-01-21 09:01:26'),
(319, 'Bright', 'Nigeria', 'Jigawa', 'Babura','2018-02-05 11:00:00'),
(320, 'Lorry', 'Nigeria', 'Ogun', 'Ifo','2018-03-27 14:05:07'),
(321, 'David', 'Nigeria', 'Ogun', 'Sagamu','2018-01-01 13:18:37'),
(322, 'Isaac', 'Ghana', 'Accra', 'Nungua','2018-02-03 15:03:27'),
(323, 'Sophia', 'Ghana', 'Volta', 'Ho','2018-03-17 09:23:50'),
(324, 'Luke', 'Ghana', 'Ashanti', 'Obuasi','2018-01-24 09:00:00');

update agents set city = 'Ifo' where agent_id = '321'; 
update agents set when_created = '2020-07-24 09:00:00' where agent_id = '324';
select * from agents;
update agents set when_created = '2020-06-09 10:41:32' where agent_id = '317';


select city, count(agent_id) as volumes from agents group by city;

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

update agent_transactions set when_created = '2020-07-24 09:00:00' where atx_id = '339';
select * from agent_transactions;
select count(atx_id), extract(month from when_created ) from agent_transactions where when_created <= '2018-12-31' group by extract (month from when_created);  
update agent_transactions set when_created = '2020-06-09 10:41:32' where atx_id = '332';
update agent_transactions set amount = '12000000' where atx_id = '332';



CREATE TABLE wallets (
wallet_id integer PRIMARY KEY,
currency text NOT NULL,
ledger_location text NOT NULL,
when_created timestamp without time zone NOT NULL
-- more stuff :)
);

insert into wallets (wallet_id ,currency , ledger_location , when_created) values
(600, 'CFA', 'Benin', '2018-01-20 09:27:20'),
(610, 'CFA', 'Benin', '2018-02-15 12:50:55'),
(620, 'CFA', 'Benin', '2018-03-09 10:41:32'),
(630, 'NGN', 'Nigeria', '2018-01-21 09:01:26'),
(640, 'NGN', 'Nigeria', '2018-02-05 11:00:00'),
(650, 'NGN', 'Nigeria', '2018-03-27 14:05:07'),
(660, 'NGN', 'Nigeria', '2018-01-01 13:18:37'),
(670, 'GHS', 'Ghana', '2018-02-03 15:03:27'),
(680, 'GHS', 'Ghana', '2018-03-17 09:23:50'),
(690, 'GHS', 'Ghana', '2020-07-24 09:00:00');

select * from wallets;
--drop table wallets;

update wallets set when_created = '2020-06-09 10:41:32' where wallet_id = '620';
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- A quick glance at the dummy data in the tables
select * from users;
select * from transfers;
select * from agents;
select * from agent_transactions;
select * from wallets;

--question 1. The u_id attribute is passed into the count function, since all the counts of u_id give all the number of instances of users in the take
select count(u_id) as total_users  
from users; 

--question2
select count(transfer_id) as cfa_transfers
from transfers 
where send_amount_currency = 'CFA';

--question 3
--select count(u_id) from transfers where send_amount_currency = 'CFA';
select count(u_id) as transfer_count, 
send_amount_currency  as currencies
from transfers group by send_amount_currency;

--question 4
select count(atx_id) as number_of_agent_transactions, 
extract(month from when_created ) as month_value
from agent_transactions 
where when_created <= '2018-12-31' 
group by extract (month from when_created);  

--qestion 5
--select transfers.u_id, users."name", transfers.send_amount_currency from transfers inner join users on transfers.u_id = users.u_id;

--question 6
--drop table atx_volume_city_summary;
--select * from atx_volume_city_summary;
--select NOW() - INTERVAL '1 week'
select city, volume into atx_volume_city_summary 
from ( select agents.city as city, 
count(agent_transactions.atx_id) as volume 
from agents inner join agent_transactions on agents.agent_id = agent_transactions.agent_id 
where (agent_transactions.when_created < (now() - interval '1 week'))
group by agents.city) as atx_volume_summary;

select * from atx_volume_city_summary;

--question 7
select city, volume, country into atx_volume_city_summary_with_Country 
from ( select agents.city as city, agents.country as country, 
count(agent_transactions.atx_id) as volume 
from agents inner join agent_transactions on agents.agent_id = agent_transactions.agent_id 
where (agent_transactions.when_created < (now() - interval '1 week'))
group by agents.country,agents.city) as atx_volume_summary_with_Country;

select * from atx_volume_city_summary_with_country;

--question 8
select country, transfer_kind, volume into send_volume_by_country_and_kind
from (select wallets.ledger_location as country, 
transfers.kind as transfer_kind, 
sum(transfers.send_amount_scalar) as volume
from transfers inner join wallets on  transfers.source_wallet_id = wallets.wallet_id 
where (transfers.when_created < (now() - interval '1 week'))
group by wallets.ledger_location, transfers.kind) as send_volume_by_country_and_kind;

select * from send_volume_by_country_and_kind;


--question 9
drop table send_volume_by_country_and_kind;

select country, transfer_kind, volume, transaction_count, unique_senders into send_volume_by_country_and_kind
from (select wallets.ledger_location as country, 
transfers.kind as transfer_kind, 
sum(transfers.send_amount_scalar) as volume,
count(transfer_id) as transaction_count,
count(transfers.source_wallet_id) AS unique_senders
from transfers inner join wallets on  transfers.source_wallet_id = wallets.wallet_id 
where (transfers.when_created < (now() - interval '1 week'))
group by wallets.ledger_location, transfers.kind) as send_volume_by_country_and_kind;

select * from send_volume_by_country_and_kind;

--question 10
SELECT source_wallet_id,
send_amount_scalar as amount 
FROM transfers 
WHERE send_amount_currency = 'CFA' and (send_amount_scalar>10000000) and (transfers.when_created < (now() - interval '1 month'));
