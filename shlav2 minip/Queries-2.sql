BEGIN;

-- Select residents admitted in the last year, grouped by floor
select r.residentid, r.firstname, r.lastname, extract(year from r.admissiondate) as admissionyear, rm.floor
from resident r
join room rm on r.roomid = rm.roomid
where r.admissiondate >= (now() - interval '1 year')
order by rm.floor, r.admissiondate;

-- Select number of caregivers in each department
select d.name as departmentname, count(c.caregiverid) as numofcaregivers
from department d
left join caregiver c on d.departmentid = c.departmentid
group by d.departmentid, d.name
order by numofcaregivers desc;

-- Select residents and count the number of family visits they had
select r.firstname, r.lastname, count(f.visitid) as numofvisits
from resident r
left join familyvisit f on r.residentid = f.residentid
group by r.residentid
order by numofvisits desc;

-- Select average age of residents by room type
select rm.roomtype, avg(extract(year from age(now(), r.dateofbirth))) as avgage
from resident r
join room rm on r.roomid = rm.roomid
group by rm.roomtype
order by avgage desc;

-- Select caregivers who performed more than 5 treatments this year
select c.firstname, c.lastname, count(m.treatmentid) as treatmentscount
from caregiver c
join medicaltreatment m on c.caregiverid = m.caregiverid
where extract(year from m.treatmentdate) = extract(year from now())
group by c.caregiverid
having count(m.treatmentid) > 5
order by treatmentscount desc;

-- Select residents with the most family visits in the last month
select r.firstname, r.lastname, count(f.visitid) as visitcount
from resident r
join familyvisit f on r.residentid = f.residentid
where f.visitdate >= (now() - interval '1 month')
group by r.residentid
order by visitcount desc;

-- Select admission dates with the most new residents
select r.admissiondate, count(*) as numadmissions
from resident r
group by r.admissiondate
order by numadmissions desc
limit 5;

-- Select number of residents per floor
select rm.floor, count(r.residentid) as number_of_residents
from room rm
join resident r on rm.roomid = r.roomid
group by rm.floor
order by number_of_residents desc;

-- Delete family visits older than 5 years
delete from familyvisit
where visitdate < (now() - interval '5 years');

-- Delete medical treatments older than 10 years
delete from medicaltreatment
where treatmentdate < (now() - interval '10 years');

-- Delete residents who have no treatments and no family visits
delete from resident
where residentid not in (select distinct residentid from medicaltreatment)
  and residentid not in (select distinct residentid from familyvisit);

-- Increase the capacity of rooms located on the first floor
update room
set capacity = capacity + 1
where floor = 1;

-- Update treatment types for treatments done last year to 'Routine Treatment'
update medicaltreatment
set treatmenttype = 'Routine Treatment'
where extract(year from treatmentdate) = extract(year from now()) - 1;

-- Set default phone number for caregivers hired more than 10 years ago
update caregiver
set phone = '000-000-0000'
where hiredate < (now() - interval '10 years');

COMMIT;