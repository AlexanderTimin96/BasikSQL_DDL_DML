CREATE SCHEMA IF NOT EXISTS clients;

CREATE TABLE IF NOT EXISTS clients.person
(
    name           VARCHAR(255) NOT NULL,
    surname        VARCHAR(255) NOT NULL,
    age            INT          NOT NULL CHECK ( age > 0 AND age < 110 ),
    phone_number   VARCHAR(20)  NOT NULL UNIQUE,
    PRIMARY KEY (name, surname, age)
);

ALTER TABLE clients.person ADD COLUMN city_of_living VARCHAR(255) NOT NULL DEFAULT ('MOSKOW');

INSERT INTO clients.person
VALUES ('Ivan', 'Ivanov', 15, '+79108886953', 'MOSKOW'),
       ('Artem', 'Artemov', 30, '+791088545453', 'MOSKOW'),
       ('Katya', 'Loshkina', 45, '+791088875753', 'KAZAN');

INSERT INTO clients.person
VALUES ('Oleg', 'Aleksandrov', 80, '+791085776953');


SELECT * FROM clients.person WHERE city_of_living = 'MOSKOW' ORDER BY age desc;

SELECT * FROM clients.person;

DROP TABLE clients.person;

DROP SCHEMA clients;



