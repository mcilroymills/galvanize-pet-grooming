# Galvanize Pet Grooming

Create queries for each of the questions listed below and put them in `queries.sql`. Note that each question only requires a single query.

## Questions

1. List Bixby's owner's first and last name, and the dates of all of their appointments.

1. List each dog's name with their breed. For dogs that are multiple breeds, each breed will return a row.

1. List _every_ dog's name and any appointment dates they have.

1. List every breed that Martha has groomed. No breed should repeat.

## Schema

![Galvanize Dog Grooming Schema](https://s3-us-west-2.amazonaws.com/assessment-images/galvanize_dog_grooming/practice_joins.jpeg)

## Data

### Customer
| id | first_name | last_name |
| --- | --- | --- |
| 1 | Kyle | Coberly |
| 2 | Danny | Fritz |
| 3 | CJ | Reynolds |
| 4 | Roberto | Ortega |

### Dog
| id | customer_id | name |
| --- | --- | --- | --- |
| 1 | 1 | Bixby |
| 2 | 1 | Mesa |
| 3 | 2 | Trixy |
| 4 | 3 | Penelope |
| 5 | 4 | Iago |

### Breed
| id | name |
| --- | --- |
| 1 | Chow Chow |
| 2 | German Shepherd |
| 3 | Jack Russell Terrier |
| 4 | Black Lab |
| 5 | Cat |

### DogBreed
| id | dog_id | breed_id |
| --- | --- | --- |
| 1 | 1 | 1 |
| 2 | 1 | 2 |
| 3 | 2 | 3 |
| 4 | 3 | 1 |
| 5 | 4 | 2 |
| 6 | 5 | 4 |
| 7 | 5 | 5 |

### Appointment
| id | dog_id | appointment_date | groomer_name |
| --- | --- | --- | --- |
| 1 | 1 | 2016-02-18 | Martha |
| 2 | 1 | 2016-03-18 | Martha |
| 3 | 2 | 2016-03-19 | Nmuta |
| 4 | 3 | 2016-03-24 | Brooks |
| 5 | 3 | 2016-03-26 | Aanal |
| 6 | 4 | 2016-03-30 | Martha |

## Output

You can create this database locally by running `test_database.sql`. Your output from running `queries.sql` against it should look like this:

```
 first_name | last_name | appointment_date 
------------+-----------+------------------
 Kyle       | Coberly   | 2016-02-18
 Kyle       | Coberly   | 2016-03-18
(2 rows)

   name   |         name         
----------+----------------------
 Bixby    | Chow Chow
 Bixby    | German Shepherd
 Mesa     | Jack Russell Terrier
 Trixy    | Chow Chow
 Penelope | German Shepherd
 Iago     | Black Lab
 Iago     | Cat
(7 rows)

   name   | appointment_date 
----------+------------------
 Bixby    | 2016-02-18
 Bixby    | 2016-03-18
 Mesa     | 2016-03-19
 Trixy    | 2016-03-24
 Trixy    | 2016-03-26
 Penelope | 2016-03-30
 Iago     | [NULL]
(7 rows)

      name       
-----------------
 Chow Chow
 German Shepherd
(2 rows)
```
