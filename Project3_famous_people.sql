-- Project 3 : Famous people
-- In this project, the task is to make a table with some small set of 'Famous people', then make more tables about things they do and join those to create a nice human readable lists. 

/*  Contains at least two tables with at 
least 15 rows total. One of the tables contains a column that relates to the primary key of another table.
Has at least one query that does a JOIN.*/

-- Table 1: inventor
CREATE TABLE inventor
(id INTEGER PRIMARY KEY AUTO_INCREMENT,
fullname TEXT,
age_when_invented INTEGER,
nationality TEXT);

CREATE TABLE inventions
(id INTEGER PRIMARY KEY AUTO_INCREMENT,
inventor_id INTEGER,
contribution TEXT,
year_of_invention INTEGER);

INSERT INTO inventor  (fullname, age_when_invented, nationality) VALUES 
('Tim Bemers Lee', 35, 'UK'),
('James Dyson', 36, 'UK'),
('Martin Cooper',45, 'USA'),
('Federico Faggin', 30, 'Italy'),
('Gary Starkweather', 31, 'USA'),
('Robert Noyce', 32, 'USA'),
('John Bardeen', 39, 'USA'),
('Percy Spencer',51, 'USA'),
('Ernst Ruska', 27, 'Germany'),
('Alexander Fleming', 48, 'UK');

INSERT INTO inventions (inventor_id, contribution, year_of_invention) VALUES
(1, 'world wide web',1990),
(2, 'Bagless vacuum cleaner', 1983),
(3, 'Mobile Phone', 1973),
(4, 'Microprocessor 4044', 1970),
(5, 'Laser printer', 1969),
(6, 'IC Fabrication', 1959),
(7, 'Transistor BJT', 1947),
(8, 'Microwave oven', 1945),
(9, 'Electron microscope', 1933),
(10, 'Penicillin', 1928);

/* Query to show the inventors and their invention, the year they invented it and how old they are when they invented it using JOIN. */

SELECT fullname, contribution, year_of_invention, age_when_invented 
FROM inventor 
JOIN inventions 
ON inventor.id = inventions.inventor_id;

/* Query to show the inventors and their nationality, the year they invented it using LEFT OUTER JOIN. */

SELECT fullname, nationality, year_of_invention
FROM inventor
LEFT OUTER JOIN inventions
ON inventor.id = inventions.inventor_id;


