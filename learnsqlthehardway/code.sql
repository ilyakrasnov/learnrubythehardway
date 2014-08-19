CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);
CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);
CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER,
    dob DATETIME
);

ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent_id INTEGER;

-- Update the existing database records with the new column data using UPDATE statements. Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet.
-- Add 4 more people and 5 more pets and assign their ownership and what pet's are parents. On this last part remember that you get the id of the parent, then set it in the parent column.
-- Write a query that can find all the names of pets and their owners bought after 2004. Key to this is to map the person_pet based on the purchased_on column to the pet and parent.
-- Write a query that can find the pets that are children of a given pet. Again look at the pet.parent to do this. It's actually easy so don't over think it.