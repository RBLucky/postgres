--animals table
CREATE TABLE
    animals (
        animal_id bigserial, 
        animal_type varchar(50) 
    );

--inserting into the animals table
INSERT INTO
    animals (animal_type)
VALUES
    ('lion'),
    ('crocodile'),
    ('eagle'),
    ('frog'),
    ('salmon'),
    ('bee');

CREATE TABLE
    animal_details (
        animal_id bigserial, 
        animal_species varchar(50) 
    );

--inserting into animal_details
INSERT INTO
    animal_details (animal_species)
VALUES
    ('Panthera leo'),
    ('Crocodylinae'),
    ('Aquila chrysaetos'),
    ('Rana temporaria'),
    ('Salmo salar'),
    ('Apis mellifera');