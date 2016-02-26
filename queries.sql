-- List Bixby's owner's first and last name, and the dates of all of their appointments.
SELECT Customer.first_name,Customer.last_name,Appointment.appointment_date
FROM Dog
JOIN Customer
ON Customer.id = Dog.customer_id
JOIN Appointment
ON Dog.id = Appointment.dog_id
WHERE Dog.name LIKE '%Bixby%';

-- List each dog's name with their breed. For dogs that are multiple breeds, each breed will return a row.
SELECT Dog.name,Breed.name
FROM Breed
JOIN DogBreed
ON DogBreed.Breed_id = Breed.id
JOIN DOG
ON DOG.ID = DogBreed.dog_id;

-- List _every_ dog's name and any appointment dates they have.
SELECT DOG.NAME,APPOINTMENT.APPOINTMENT_DATE
FROM DOG
LEFT JOIN APPOINTMENT
ON DOG.ID = APPOINTMENT.DOG_ID;

-- List every breed that Martha has groomed. No breed should repeat.
SELECT DISTINCT BREED.NAME
FROM BREED
JOIN DOGBREED
ON DOGBREED.BREED_ID = BREED.ID
JOIN APPOINTMENT
ON APPOINTMENT.DOG_ID = DOGBREED.DOG_ID
WHERE APPOINTMENT.GROOMER_NAME LIKE '%Martha%';

