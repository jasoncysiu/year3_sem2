-- Q1 
select f.season_id,  p.pet_type, sum(f.number_of_visit) as number_of_visit
from pet9fact f, petdim p
where f.pet_id = p.pet_id
group by f.season_id, p.pet_type
order by p.pet_type;

-- Q2
select st.staff_level, sum(f.number_of_visit) as number_of_visit
from pet9fact f, staffdim st
where f.staff_id = st.staff_id
group by st.staff_level;

-- Q3
select p.product_desc, sum(f.number_of_visit) as number_of_vist
from ServiceDim s, product_use_bridge u, productdim p, pet9fact f
where s.service_id = u.service_id and u.product_id = p.product_id and 
f.service_id = s.service_id
group by  p.product_desc
order by p.product_desc;

-- Q4 
select f.service_id, p.pet_type, sum(f.total_income)
from pet9fact f, petdim p
where f.pet_id = p.pet_id 
group by f.service_id, p.pet_type
order by f.service_id;

-- Q5
select p.product_desc, sum(f.total_income)
from ServiceDim s, product_use_bridge u, productdim p, pet9fact f
where s.service_id = u.service_id and u.product_id = p.product_id and 
f.service_id = s.service_id
group by  p.product_desc
Order by p.product_desc;
