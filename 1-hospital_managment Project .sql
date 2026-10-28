select*
from appointments;


-- appointment table: changing data type from text to date of appointment_date column.
update appointments
set appointment_date = str_to_date(appointment_date, '%Y-%m-%d');

alter table appointments
modify column appointment_date date ;


-- appointment table: changing data type of appointment_time from text to time.
alter table appointments
modify column appointment_time time ;

select*
from billing;

update billing
set bill_date = str_to_date(bill_date, '%Y-%m-%d');

-- alter the billing table column bill_date data type to date from text .
alter table billing
modify column bill_date date ;

-- alter amount column data type to decimal 
alter table billing
modify column amount integer;

select*
from doctors;

select*
from  patients;

update patients
set date_of_birth = str_to_date(date_of_birth, '%Y-%m-%d');

alter table patients
modify column date_of_birth  date ;

update patients
set registration_date = str_to_date(registration_date, '%Y-%m-%d');

alter table patients
modify column registration_date  date ;

select*
from treatments;

alter table treatments
modify column cost integer;

update treatments
set treatment_date = str_to_date(treatment_date, '%Y-%m-%d');

alter table treatments
modify column treatment_date  date ;


select*
from appointments;

select*
from billing;

select*
from doctors;

select*
from patients;

select*
from treatments;

-- 1.How many appointments are present in this table?
select count(appointment_id) as total_appointment
from appointments;


-- 2. What are the different appointment statuses, and how many appointments are in each status?
select status,count(status) as status_total_appointments
from appointments
group by status 
order by status
;

-- 3. Which treatment types are available, and how many treatments are recorded for each?
select treatment_type, count(appointment_id) as treatment_num
from treatments
group by treatment_type
order by treatment_num
;

-- 4. What are the total, average, minimum, and maximum treatment costs?
select max(cost)as max_treatment_cost, min(cost) as min_treatment_cost, avg(cost) as avg_treatment_cost , sum(cost) as total_treatment_cost
from treatments;

-- 5. number of appointments of each doctor ?
select*
from doctors;
select*
from appointments;

select*
from doctors
join appointments
on doctors.doctor_id = appointments.doctor_id
order by doctors.doctor_id;

select concat(first_name,' ',last_name) as doctors_name, doctors.doctor_id, count(appointment_id)
from doctors
join appointments
on doctors.doctor_id = appointments.doctor_id
group by doctors.doctor_id,doctors.first_name,doctors.last_name
order by doctors.doctor_id
;

-- 6. doctor with highest no. of appointments?

select doctors.doctor_id, count(appointment_id) as total_patients
from doctors
join appointments
on doctors.doctor_id = appointments.doctor_id
group by doctors.doctor_id,doctors.first_name,doctors.last_name
order by count(appointment_id) desc limit 3
;

-- 7. Which specializations receive the most appointments?
select doctors.specialization, count(patient_id) as patients_in_specialization
from doctors
join appointments
on doctors.doctor_id = appointments.doctor_id
group by specialization
order by count(patient_id)desc; 

-- 8. Which patients have the highest number of appointments?
select*
from appointments;
select*
from patients;

select*
from appointments
join patients
on appointments.patient_id = patients.patient_id;

select patients.patient_id, count(appointment_id) as total_appointment
from appointments
join patients
on appointments.patient_id = patients.patient_id
group by patient_id
order by  count(appointment_id) desc limit 10
;

-- 9. What is the total billing amount ?
select*
from billing;

select sum(amount) as total_billing_amount
from billing
;

-- 10. What is the total billing amount by payment status with total ?
select coalesce(payment_status,'total') as payment_status, count(bill_id) as num_of_bills, 
sum(amount) as total_amount
from billing
group by payment_status with rollup;

-- 11. What percentage of appointments are completed, cancelled,scheduled and no-show?
select status ,count(status) ,count(status)*100/ sum(count(status)) over() as percentage_appointment_status
from appointments
group by status 
order by percentage_appointment_status desc
;

-- 12. Which treatment types have the highest average cost and total cost?
select treatment_type, 
	count(treatment_type)as trearment_count,
	sum(cost) as total_tratment_cost,
	ROUND(AVG(cost), 2) AS average_cost
from treatments
group by treatment_type
order by sum(cost) desc
;

-- 13. Which doctors have the highest completed-appointment count?
select*
from appointments;

select  doctor_id, count(status)
from appointments
where status = 'completed'
group by doctor_id
order by  count(status) desc
;

-- 14. Which month has the highest number of appointments?
select substring(appointment_date,6,2) as appointment_month, count(appointment_id) as Appointmaent_count
from appointments
group by substring(appointment_date,6,2)
order by count(appointment_id) desc 
;

-- 15. What is the cancellation/no-show rate for each doctor? *imp
SELECT
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name,COUNT(appointment_id) AS total_appointments,
    SUM(
    CASE
	WHEN a.status IN ('Cancelled', 'No-show') THEN 1 ELSE 0
	END
    ) AS missed_cancelled_appointments,
    ROUND(100.0 * SUM(
	CASE
	WHEN a.status IN ('Cancelled', 'No-show') THEN 1 ELSE 0
	END ) / COUNT(appointment_id), 2
    ) AS missed_cancelled_rate
FROM appointments a
JOIN doctors d
ON a.doctor_id = d.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY missed_cancelled_rate DESC;

-- 16. Rank doctors within each specialization based on appointment count
select*
from appointments;
select*
from doctors;

with cte_specialization as (
select d.specialization,d.doctor_id , CONCAT(d.first_name, ' ', d.last_name) AS doctor_name, count(a.appointment_id) as total_appointments
from appointments as a
join doctors as d 
on a.doctor_id = d.doctor_id
group by d.specialization, d.doctor_id , d.first_name, d.last_name)
select*, rank()over(partition by specialization order by  total_appointments  desc) as specialization_rank
from cte_specialization 
;





