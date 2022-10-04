--------------------------------- Dimension
--SeasonDIM
DROP TABLE seasondim CASCADE CONSTRAINTS purge;

CREATE TABLE seasondim
  (
     season_id        VARCHAR(20),
     season_desc      VARCHAR(20),
     season_startdate VARCHAR2(20),
     season_enddate   VARCHAR2(20)
  );

INSERT INTO seasondim
VALUES      ('S1',
             'Spring',
             'Sep',
             'Nov');

INSERT INTO seasondim
VALUES      ('S2',
             'Summer',
             'Dec',
             'Feb');

INSERT INTO seasondim
VALUES      ('S3',
             'Autumn',
             'Mar',
             'May');

INSERT INTO seasondim
VALUES      ('S4',
             'Winter',
             'Jun',
             'Aug');

--StaffLvExpertiseDIM
DROP TABLE stafflvexpertisedim CASCADE CONSTRAINTS purge;

CREATE TABLE stafflvexpertisedim AS
  (SELECT DISTINCT staff_level,
                   staff_id
   FROM   pet9.staff);

--PetTypeDIM
DROP TABLE pettypedim CASCADE CONSTRAINTS purge;

CREATE TABLE pettypedim AS
  SELECT pet_type,
         pet_id
  FROM   pet9.pet;

--ServiceProductBridge
DROP TABLE serviceproductbridge CASCADE CONSTRAINTS purge;

CREATE TABLE serviceproductbridge AS
  SELECT *
  FROM   pet9.product_use pu;

--ServiceDIM
DROP TABLE servicedim CASCADE CONSTRAINTS purge;

CREATE TABLE servicedim AS
  SELECT s.service_id,
         s.service_desc,
         To_char(1 / Count(s.service_id), 'fm99D00') AS WeightedFactor,
         Listagg (p.product_id, '_')
           within GROUP (ORDER BY p.product_id)      AS ProductGroupList
  FROM   pet9.service s,
         pet9.product p,
         pet9.product_use pu
  WHERE  ( pu.product_id = p.product_id )
         AND ( s.service_id = pu.service_id )
  GROUP  BY s.service_id,
            s.service_desc;

--ProductDim
DROP TABLE productdim CASCADE CONSTRAINTS purge;

CREATE TABLE productdim AS
  SELECT *
  FROM   pet9.product;

--------------------------------- TEMPFACT
DROP TABLE temp_fact CASCADE CONSTRAINTS purge;

CREATE TABLE temp_fact AS
  SELECT p.pet_id,
         v.visit_date,
         st.staff_id,
         s.service_id,
         v.price
  FROM   pet9.pet p,
         pet9.visit v,
         pet9.staff st,
         pet9.service s
  WHERE  v.pet_id = p.pet_id
         AND st.staff_id = v.staff_id
         AND s.service_id = v.service_id;

-- Adding one column of SeasonID to the tempFact
ALTER TABLE temp_fact
  ADD (season_id VARCHAR(20));

-- Season: Spring
UPDATE temp_fact
SET    season_id = 'S1'
WHERE  To_char(visit_date, 'MM') >= '09'
       AND To_char(visit_date, 'MM') <= '11';

-- Season: Summer
UPDATE temp_fact
SET    season_id = 'S2'
WHERE  To_char(visit_date, 'MM') = '12'
        OR To_char(visit_date, 'MM') <= '02';

-- Season: Autumn
UPDATE temp_fact
SET    season_id = 'S3'
WHERE  To_char(visit_date, 'MM') >= '03'
       AND To_char(visit_date, 'MM') <= '05';

-- Season: Winter
UPDATE temp_fact
SET    season_id = 'S4'
WHERE  To_char(visit_date, 'MM') >= '06'
       AND To_char(visit_date, 'MM') <= '08';

-- After assigning the Season column, drop the column of visit date
ALTER TABLE temp_fact
  DROP COLUMN visit_date;

DROP TABLE petvisitfact CASCADE CONSTRAINTS purge;

CREATE TABLE petvisitfact AS
  SELECT season_id,
         pet_id,
         staff_id,
         service_id,
         Count(*)    AS Total_visit,
         SUM (price) AS Total_income
  FROM   temp_fact
  GROUP  BY season_id,
            service_id,
            staff_id,
            pet_id;