
use hwsql5;

CREATE TABLE Cars (
	Id int auto_increment primary key,
    Name varchar(25) NOT NULL,
    Cost DECIMAL (6, 0)
);

INSERT INTO Cars (Name, Cost) VALUES
	('Audi', 52642), ('Mercedes', 57127),
    ('Skoda', 9000), ('Volvo', 29000),
	('Bentley', 350000), ('Citroen', 21000),
    ('Hummer', 41400), ('Votkswagen', 21600);
    
SELECT * FROM Cars;

CREATE VIEW Cars_cheap AS
	SELECT * FROM Cars WHERE Cost < 25000;

SELECT * FROM Cars_cheap;

ALTER VIEW Cars_cheap AS
	SELECT * FROM Cars WHERE Cost < 30000;
    
SELECT * FROM Cars_cheap;

CREATE VIEW Cars_two AS
	SELECT * FROM Cars WHERE Name = 'Skoda' OR Name = 'Audi';
    
SELECT * FROM Cars_two;

