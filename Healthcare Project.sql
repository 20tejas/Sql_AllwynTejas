use etl1;
select * from healthcare;
-- retrive all names from healthcare 
select name from healthcare;
-- select unique mc from table
select distinct medical_condition from healthcare;
-- find total number of doctors.
select count(doctor) from healthcare;
-- retrive details of all female patients
select * from healthcare where gender='Female';
-- what is average age of patients in database.
select avg(age) from healthcare;
-- identify patients who have more tham 1 medical conditions.
select name from healthcare group by name having count(medical_condition) >1;
-- list names of all doctors.
select doctor from healthcare;
-- identify most common medical conditions.
select medical_condition from healthcare group by(medical_condition) order by count(medical_condition) desc limit 1;
-- find patients who are 60 and have diabetes.
select name from healthcare where age>60 and medical_condition ='diabetes';
-- calculate total revenue generated by healthcare system.
select sum(billing_amount) from healthcare;
-- find doctor with oldest patient.
select doctor from healthcare order by age desc limit 1;
-- calculate average duration of medical visits.
select avg(duration) from healthcare;
-- give names of patients who name starts with a.
select name from healthcare where name like'a%';
-- how many male and female patients are there in data base.
select count(gender),gender from healthcare group by gender;
-- how many patients are normal.
select count(*) from healthcare where medical_condition='Normal';
-- how many patients are abnormal or unconclusive. ####(like in not working)
select count(*) from healthcare where medical_condition = 'abnormal' or 'inconclusive';
-- how many patients of blood group ab+ are there above age of 52.
select count(name) from healthcare where blood_type ='ab+' ;
-- name the medical conditions having patients whose ages are greater than avg age.
select medical_condition from healthcare where age > (select avg(age) from healthcare); 
-- select how many patients have paid bill above 24890.
select name from healthcare where billing_amount > 24890;
-- what are name of patients having asthama.
select name from healthcare where medical_condition ='Asthma';
--  how many patients have cancer.
select count(name) from healthcare where medical_condition ='Cancer';
-- what are names and blood groups to patients admitted in room no 292.
select name,blood_type from healthcare where room_number =292;
-- how many males have arthritis.
select count(name) from healthcare where gender='Male' and medical_condition ='Arthritis';
-- how many patients are admitted to harris and sons hospital.
select count(name) from healthcare where hospital ='Harris and sons';
-- what are names of patient who insurance provider are cigna.
select name from healthcare where insurance_provider ='cigna';