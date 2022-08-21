-- Q1: The number of visits by season and by pet types

SELECT s.season_desc,
       pd.pet_type,
       count(fact.total_visit) as TOTAL_VISIT
FROM PetVisitFACT fact,
     seasondim s,
     pettypedim pd
WHERE (s.season_id = fact.season_id)
      AND (pd.pet_id = fact.pet_id)
GROUP BY season_desc,
         pd.pet_type
ORDER BY pd.pet_type;

-- Q2: The number of visits handled by different levels of staff expertise
SELECT s.staff_level,
       count(total_visit) as TOTAL_VISIT
FROM PetVisitFACT f,
     staffdim s
WHERE s.staff_id = f.staff_id
GROUP BY s.staff_level;

-- Q3: The number of visits by different products
SELECT pd.product_desc,
       count(fact.total_visit) as TOTAL_VISIT
FROM ServiceDIM sd,
     serviceproductbridge spb,
     ProductDim pd,
     PetVisitFACT fact
WHERE (spb.product_id = pd.product_id)
      AND (sd.service_id = spb.service_id)
      AND (fact.service_id = sd.service_id)
GROUP BY pd.product_desc;

-- Q4: The total income by services, for different pet types
SELECT sd.service_id,
       sd.service_desc,
       fact.pet_id,
       sum(fact.TOTAL_INCOME) as TOTAL_INCOME
FROM ServiceDIM sd,
     serviceproductbridge spb,
     ProductDim pd,
     PetVisitFACT fact,
     PetTypeDim ptd
WHERE (spb.product_id = pd.product_id)
      AND (sd.service_id = spb.service_id)
      AND (fact.service_id = sd.service_id)
      AND (fact.pet_id = ptd.pet_id)
GROUP BY sd.service_id,
         sd.service_desc,
         fact.pet_id;
		 
		 
-- Q5: The total income by different products.
SELECT pd.product_desc,
       sum(fact.TOTAL_INCOME) as TOTAL_INCOME
FROM ServiceDIM sd,
     serviceproductbridge spb,
     ProductDim pd,
     PetVisitFACT fact
WHERE (spb.product_id = pd.product_id)
      AND (sd.service_id = spb.service_id)
      AND (fact.service_id = sd.service_id)
GROUP BY pd.product_desc;