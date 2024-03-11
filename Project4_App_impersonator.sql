/*Think about your favorite apps, and pick one that stores your data- like a game 
that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data 
in a SQL database (which is pretty likely!), and write SQL statements 
that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.*/

CREATE TABLE CebuPac (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    flight_number INTEGER,
    origin TEXT,
    destination TEXT,
    traveltime_minutes INTEGER);

INSERT INTO CebuPac (flight_number, origin, destination, traveltime_minutes) VALUES (1203, 'MNL', 'SIN', 240);
INSERT INTO CebuPac (flight_number, origin, destination, traveltime_minutes) VALUES (1204, 'MNL', 'CEB', 85);
INSERT INTO CebuPac (flight_number, origin, destination, traveltime_minutes) VALUES (1205, 'MNL', 'MPH', 60);
INSERT INTO CebuPac (flight_number, origin, destination, traveltime_minutes) VALUES (1207, 'MNL', 'HKG', 140);

SELECT * FROM CebuPac; 

UPDATE CebuPac SET flight_number = 1206 WHERE id = 4;

SELECT * FROM CebuPac; 

INSERT INTO CebuPac (flight_number, origin, destination, traveltime_minutes) VALUES (2157, 'HKG', 'SIN', 240);

DELETE from CebuPac WHERE flight_number = 2157;

SELECT * FROM CebuPac;