CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Departments
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Specialties
CREATE TABLE Specialties (
    specialty_id INT PRIMARY KEY,
    specialty_name VARCHAR(100)
);

-- Doctors
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    department_id INT,
    specialty_id INT,
    joining_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (specialty_id) REFERENCES Specialties(specialty_id)
);

-- Patients
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    date_of_birth DATE,
    gender VARCHAR(10),
    address TEXT
);

-- Appointments
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    doctor_id INT,
    patient_id INT,
    appointment_date DATETIME,
    reason TEXT,
    status VARCHAR(20),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Payments
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    appointment_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Departments
INSERT INTO Departments VALUES
(1,'Cardiology'),(2,'Neurology'),(3,'Orthopedics'),
(4,'Pediatrics'),(5,'Dermatology'),(6,'ENT'),
(7,'Oncology'),(8,'General Medicine'),(9,'Gynecology'),(10,'Urology'),
(11,'Nephrology'),(12,'Endocrinology'),(13,'Psychiatry'),
(14,'Surgery'),(15,'Radiology'),(16,'Gastroenterology'),
(17,'Pulmonology'),(18,'Ophthalmology'),(19,'Dentistry'),(20,'Physiotherapy');

-- Specialties
INSERT INTO Specialties VALUES
(1,'Cardiologist'),(2,'Neurologist'),(3,'Orthopedic'),
(4,'Pediatrician'),(5,'Dermatologist'),(6,'ENT Specialist'),
(7,'Oncologist'),(8,'General Physician'),(9,'Gynecologist'),(10,'Urologist'),
(11,'Nephrologist'),(12,'Endocrinologist'),(13,'Psychiatrist'),
(14,'Surgeon'),(15,'Radiologist'),(16,'Gastroenterologist'),
(17,'Pulmonologist'),(18,'Ophthalmologist'),(19,'Dentist'),(20,'Physiotherapist');

-- Doctors (20 doctors)
INSERT INTO Doctors VALUES
(1,'John','Smith','john.smith@hospital.com','9990001111',1,1,'2020-01-15'),
(2,'Emily','Davis','emily.davis@hospital.com','9990001112',2,2,'2019-03-20'),
(3,'Michael','Brown','michael.brown@hospital.com','9990001113',3,3,'2021-05-10'),
(4,'Sophia','Johnson','sophia.johnson@hospital.com','9990001114',4,4,'2018-07-01'),
(5,'Liam','Miller','liam.miller@hospital.com','9990001115',5,5,'2022-02-22'),
(6,'Olivia','Wilson','olivia.wilson@hospital.com','9990001116',6,6,'2017-04-11'),
(7,'Noah','Moore','noah.moore@hospital.com','9990001117',7,7,'2016-06-16'),
(8,'Emma','Taylor','emma.taylor@hospital.com','9990001118',8,8,'2015-08-30'),
(9,'James','Anderson','james.anderson@hospital.com','9990001119',9,9,'2014-09-19'),
(10,'Ava','Thomas','ava.thomas@hospital.com','9990001120',10,10,'2023-01-10'),
(11,'William','Martin','william.martin@hospital.com','9990001121',11,11,'2018-10-25'),
(12,'Isabella','Lee','isabella.lee@hospital.com','9990001122',12,12,'2020-05-12'),
(13,'Ethan','Harris','ethan.harris@hospital.com','9990001123',13,13,'2021-03-09'),
(14,'Mia','Clark','mia.clark@hospital.com','9990001124',14,14,'2019-12-17'),
(15,'Alexander','Lewis','alex.lewis@hospital.com','9990001125',15,15,'2017-07-07'),
(16,'Charlotte','Walker','charlotte.walker@hospital.com','9990001126',16,16,'2016-11-21'),
(17,'Benjamin','Hall','ben.hall@hospital.com','9990001127',17,17,'2018-01-13'),
(18,'Amelia','Allen','amelia.allen@hospital.com','9990001128',18,18,'2019-04-02'),
(19,'Henry','Young','henry.young@hospital.com','9990001129',19,19,'2020-09-15'),
(20,'Harper','King','harper.king@hospital.com','9990001130',20,20,'2021-08-05');

-- Patients (20 patients)
INSERT INTO Patients VALUES
(1,'Alice','White','alice.white@mail.com','8881112221','1995-06-12','Female','Mumbai'),
(2,'Robert','Green','robert.green@mail.com','8881112222','1990-03-21','Male','Delhi'),
(3,'Sophia','Black','sophia.black@mail.com','8881112223','2000-11-05','Female','Bangalore'),
(4,'Daniel','Wright','daniel.wright@mail.com','8881112224','1987-09-15','Male','Pune'),
(5,'Emma','Scott','emma.scott@mail.com','8881112225','1992-12-30','Female','Hyderabad'),
(6,'Lucas','Baker','lucas.baker@mail.com','8881112226','1998-04-09','Male','Chennai'),
(7,'Mia','Adams','mia.adams@mail.com','8881112227','1994-01-25','Female','Kolkata'),
(8,'Ethan','Nelson','ethan.nelson@mail.com','8881112228','1985-07-17','Male','Lucknow'),
(9,'Olivia','Hill','olivia.hill@mail.com','8881112229','1996-08-22','Female','Jaipur'),
(10,'Liam','Carter','liam.carter@mail.com','8881112230','2001-02-28','Male','Ahmedabad'),
(11,'Ava','Mitchell','ava.mitchell@mail.com','8881112231','1989-10-19','Female','Mumbai'),
(12,'Noah','Perez','noah.perez@mail.com','8881112232','1993-11-30','Male','Delhi'),
(13,'Isabella','Roberts','isabella.roberts@mail.com','8881112233','1997-03-04','Female','Bhopal'),
(14,'James','Turner','james.turner@mail.com','8881112234','1984-05-16','Male','Nagpur'),
(15,'Charlotte','Phillips','charlotte.phillips@mail.com','8881112235','1991-09-09','Female','Indore'),
(16,'Benjamin','Campbell','benjamin.campbell@mail.com','8881112236','1999-07-13','Male','Patna'),
(17,'Amelia','Evans','amelia.evans@mail.com','8881112237','1995-04-01','Female','Chandigarh'),
(18,'William','Torres','william.torres@mail.com','8881112238','1988-06-29','Male','Surat'),
(19,'Harper','Parker','harper.parker@mail.com','8881112239','1994-08-18','Female','Kanpur'),
(20,'Elijah','Edwards','elijah.edwards@mail.com','8881112240','1990-12-11','Male','Ranchi');

-- Appointments (20 sample appointments)
INSERT INTO Appointments VALUES
(1,1,1,'2023-09-01 10:30:00','Heart Checkup','Completed'),
(2,2,2,'2023-09-02 11:00:00','Headache','Scheduled'),
(3,3,3,'2023-09-03 14:00:00','Knee Pain','Completed'),
(4,4,4,'2023-09-04 09:15:00','Fever','Cancelled'),
(5,5,5,'2023-09-05 12:00:00','Skin Rash','Completed'),
(6,6,6,'2023-09-06 16:00:00','Ear Pain','Scheduled'),
(7,7,7,'2023-09-07 17:30:00','Cancer Follow-up','Completed'),
(8,8,8,'2023-09-08 15:45:00','General Checkup','Completed'),
(9,9,9,'2023-09-09 10:10:00','Pregnancy','Scheduled'),
(10,10,10,'2023-09-10 11:45:00','Kidney Stone','Completed'),
(11,11,11,'2023-09-11 13:20:00','Dialysis','Completed'),
(12,12,12,'2023-09-12 09:40:00','Diabetes','Completed'),
(13,13,13,'2023-09-13 14:30:00','Anxiety','Cancelled'),
(14,14,14,'2023-09-14 10:50:00','Appendix Surgery','Completed'),
(15,15,15,'2023-09-15 12:25:00','X-ray','Completed'),
(16,16,16,'2023-09-16 15:00:00','Stomach Pain','Scheduled'),
(17,17,17,'2023-09-17 16:15:00','Asthma','Completed'),
(18,18,18,'2023-09-18 17:40:00','Eye Checkup','Cancelled'),
(19,19,19,'2023-09-19 09:30:00','Tooth Extraction','Completed'),
(20,20,20,'2023-09-20 11:10:00','Physiotherapy','Scheduled');

-- Payments (20 records)
INSERT INTO Payments VALUES
(1,1,'2023-09-01',1500,'Cash'),
(2,3,'2023-09-03',2000,'Card'),
(3,5,'2023-09-05',1200,'Wallet'),
(4,7,'2023-09-07',5000,'Insurance'),
(5,8,'2023-09-08',800,'Cash'),
(6,10,'2023-09-10',3000,'Card'),
(7,11,'2023-09-11',7000,'Insurance'),
(8,12,'2023-09-12',2500,'Cash'),
(9,14,'2023-09-14',10000,'Card'),
(10,15,'2023-09-15',1500,'Wallet'),
(11,17,'2023-09-17',2000,'Cash'),
(12,19,'2023-09-19',2500,'Card'),
(13,2,'2023-09-02',0,'Cash'),
(14,4,'2023-09-04',0,'Cash'),
(15,6,'2023-09-06',0,'Cash'),
(16,9,'2023-09-09',0,'Card'),
(17,13,'2023-09-13',0,'Wallet'),
(18,16,'2023-09-16',0,'Cash'),
(19,18,'2023-09-18',0,'Cash'),
(20,20,'2023-09-20',0,'Cash');

-- Question 1. Find the Total Number of Appointments for Each Doctor 
SELECT d.first_name, d.last_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id;

-- Question 2. List All Patients Who Have an Appointment with a Specific Doctor Dr. John Smith 
SELECT p.first_name, p.last_name
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE d.first_name = 'John' AND d.last_name = 'Smith';

-- Question 3. Find the Number of Appointments Scheduled in a Specific Department 
SELECT dep.department_name, COUNT(a.appointment_id) AS total_appointments
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Departments dep ON d.department_id = dep.department_id
WHERE dep.department_name = 'Cardiology'
GROUP BY dep.department_name;

-- Question 4. Find the Most Popular Specialty Based on Number of Appointments 
SELECT s.specialty_name, COUNT(a.appointment_id) AS total_appointments
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Specialties s ON d.specialty_id = s.specialty_id
GROUP BY s.specialty_name
ORDER BY total_appointments DESC
LIMIT 1;

-- Question 5. Get the Total Payment Amount for All Completed Appointments 
SELECT SUM(p.payment_amount) AS total_revenue
FROM Payments p
JOIN Appointments a ON p.appointment_id = a.appointment_id
WHERE a.status = 'Completed';

-- Question 6. Find the Number of Patients Seen by Each Doctor
SELECT d.first_name, d.last_name, COUNT(DISTINCT a.patient_id) AS total_patients
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id;
 
-- Question 7. List All Patients Who Have Missed Their Appointments (Status 'Cancelled')
SELECT DISTINCT p.first_name, p.last_name
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
WHERE a.status = 'Cancelled';
 
-- Question 8. Find the Total Number of Appointments for Each Status (Scheduled, Completed, Cancelled) 
SELECT status, COUNT(*) AS total
FROM Appointments
GROUP BY status;

-- Question 9. Get the Average Payment Amount for Completed Appointments 
SELECT AVG(p.payment_amount) AS avg_payment
FROM Payments p
JOIN Appointments a ON p.appointment_id = a.appointment_id
WHERE a.status = 'Completed';

-- Question 10. Find the Doctor with the Highest Number of Appointments
SELECT d.first_name, d.last_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
ORDER BY total_appointments DESC
LIMIT 1;
