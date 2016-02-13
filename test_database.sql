DROP TABLE IF EXISTS DogBreed;
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Breed;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE Breed (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Dog (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(id)
);

CREATE TABLE Appointment (
    id INT PRIMARY KEY,
    appointment_date DATE,
    groomer_name VARCHAR(255),
    dog_id INT,
    FOREIGN KEY (dog_id) REFERENCES Dog(id)
);

CREATE TABLE DogBreed (
    id INT PRIMARY KEY,
    dog_id INT,
    breed_id INT,
    FOREIGN KEY (dog_id) REFERENCES Dog(id),
    FOREIGN KEY (breed_id) REFERENCES Breed(id)
);

INSERT INTO Customer (
    id, first_name, last_name
) VALUES (
    1, 'Kyle', 'Coberly'
),(
    2, 'Danny', 'Fritz'
),(
    3, 'CJ', 'Reynolds'
),(
    4, 'Roberto', 'Ortega'
);

INSERT INTO Breed (
    id, name
) VALUES (
    1, 'Chow Chow'
),(
    2, 'German Shepherd'
),(
    3, 'Jack Russell Terrier'
),(
    4, 'Black Lab'
),(
    5, 'Cat'
);

INSERT INTO Dog (
    id, customer_id, name
) VALUES (
    1, 1, 'Bixby'
),(
    2, 1, 'Mesa'
),(
    3, 1, 'Trixy'
),(
    4, 1, 'Penelope'
),(
    5, 1, 'Iago'
);

INSERT INTO Appointment (
   id, dog_id, appointment_date, groomer_name 
) VALUES (
    1, 1, '2016-02-18', 'Martha'
),(
    2, 1, '2016-03-18', 'Martha'
),(
    3, 2, '2016-03-19', 'Nmuta'
),(
    4, 3, '2016-03-24', 'Brooks'
),(
    5, 3, '2016-03-26', 'Aanal'
),(
    6, 4, '2016-03-30', 'Martha'
);

INSERT INTO DogBreed (
    id, dog_id, breed_id
) VALUES (
    1, 1, 1
),(
    2, 1, 2
),(
    3, 2, 3
),(
    4, 3, 1
),(
    5, 4, 2
),(
    6, 5, 4
),(
    7, 5, 5
);
