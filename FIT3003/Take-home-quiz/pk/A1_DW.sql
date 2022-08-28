-- Pet dim 
drop table PetDim cascade constraints purge;
create table PetDim as 
select Pet_ID, Pet_Type
from Pet9.pet;

-- Staff dim 
drop table staffdim cascade constraints purge;
create table StaffDim as 
select Staff_ID, Staff_Level
from Pet9.staff;

-- Service dim 
drop table ServiceDim cascade constraints purge;
create table ServiceDim as
select  s.service_id , s.service_desc , 
1/ count(*) as WeightedFactor ,
listagg (p.product_id, '_') within group 
(order by p.product_id) as StoreGroupList
from pet9.service s , pet9.product p, pet9.product_use u
where ( u.product_id = p.product_id) and ( s.service_id = u.service_id)
group by  s.service_id , s.service_desc;

-- Bridge table 
drop table product_use_bridge cascade constraints purge;
create table product_use_bridge as 
select * 
from Pet9.product_use;

-- Product dim 
drop table productDim cascade constraints purge;
create table productDim as 
select * 
from Pet9.product;

-- Manually create season table
drop table seasonDim cascade constraints purge;
create table SeasonDim (
SeasonId         varchar(20),
Season_start     varchar(10),
Season_end       varchar(10)   
);

insert into seasonDim values ('Summer', '12', '2');
insert into seasonDim values ('Autumn', '3', '5');
insert into seasonDim values ('Winter', '6', '8');
insert into seasonDim values ('Spring', '9', '11');

-- Temp Fact 
drop table Temp_Fact cascade constraints purge;
create table Temp_Fact as
select p.pet_id, v.visit_date, st.staff_id, s.service_id, v.price
from  pet9.pet p, pet9.visit v, pet9.staff st, pet9.service s 
where v.pet_id = p.pet_id and
st.staff_id = v.staff_id and 
s.service_id = v.service_id; 
 
alter table Temp_Fact
add (Season_ID varchar(20));

-- Season: spring
update Temp_Fact
set Season_ID = 'Spring'
where to_char(visit_date, 'MM') >= '09'
and to_char(visit_date, 'MM') <='11';

-- Season: summer
update Temp_Fact
set Season_ID = 'Summer'
where to_char(visit_date, 'MM') = '12'
or to_char(visit_date, 'MM') <='02';

-- Season: autumn
update Temp_Fact
set Season_ID = 'Autumn'
where to_char(visit_date, 'MM') >= '03'
and to_char(visit_date, 'MM') <='05';

-- Season: Winter
update Temp_Fact
set Season_ID = 'Winter'
where to_char(visit_date, 'MM') >= '06'
and to_char(visit_date, 'MM') <='08';

-- final fact table 
drop table Pet9Fact cascade constraints purge;
create table Pet9Fact as 
select staff_id, season_id, pet_id, service_id, 
sum(price) as Total_income, 
count(pet_id) as number_of_visit
from temp_fact
group by staff_id, season_id, pet_id, service_id;