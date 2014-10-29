DROP TABLE actor;
DROP TABLE casting;
DROP TABLE dept;
DROP TABLE movie;
DROP TABLE nobel;
DROP TABLE route;
DROP TABLE stops;
DROP TABLE teacher;
DROP TABLE world; 

CREATE TABLE world(
   name VARCHAR(50) NOT NULL,
   continent VARCHAR(60),
   area DECIMAL(10),
   population DECIMAL(11),
   gdp DECIMAL(14),
   PRIMARY KEY (name)
);

CREATE TABLE nobel(
  yr INT,
  subject VARCHAR(15),
  winner VARCHAR(50)
);

CREATE TABLE actor(
  id INTEGER NOT NULL,
  name VARCHAR(35),
  PRIMARY KEY (id)
);

CREATE INDEX actor_name ON actor(name);

CREATE TABLE movie(
  id INTEGER NOT NULL,
  title VARCHAR(70),
  yr DECIMAL(4) ,
  score FLOAT,
  votes INTEGER,
  director INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (director) REFERENCES actor(id)
);

CREATE INDEX movie_title ON movie(title);

CREATE TABLE casting (
  movieid INTEGER NOT NULL,
  actorid INTEGER NOT NULL,
  ord INTEGER,
  PRIMARY KEY (movieid, actorid),
  FOREIGN KEY (movieid) REFERENCES movie(id),
  FOREIGN KEY (actorid) REFERENCES actor(id)
);

CREATE INDEX casting_movie ON casting(movieid);
CREATE INDEX casting_actor ON casting(actorid);
CREATE INDEX casting_ord   ON casting(ord);

CREATE TABLE stops (
  id INTEGER NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY(id)
);

CREATE TABLE route (
  num VARCHAR(5) NOT NULL,
  company VARCHAR(3) NOT NULL,
  pos INTEGER NOT NULL,
  stop INTEGER,
  FOREIGN KEY(stop) REFERENCES stops(id),
  PRIMARY KEY(num,company,pos)
);

CREATE TABLE teacher (
  id INTEGER NOT NULL,
  dept INTEGER,
  name VARCHAR(255),
  phone INTEGER,
  mobile VARCHAR(255),
  PRIMARY KEY(id),
  FOREIGN KEY(dept) REFERENCES dept(id)
);

CREATE INDEX teacher_dept ON teacher(dept);

CREATE TABLE dept (
  id INTEGER NOT NULL,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

.mode tabs
.import 'tabactor.txt' actor
.import 'tabworld.txt' world
.import 'tabcasting.txt' casting
.import 'tabmovie.txt' movie
.import 'tabnobel.txt' nobel
.import 'tabroute.txt' route
.import 'tabstops.txt' stops
.import 'tabteacher.txt' teacher
.import 'tabdept.txt' dept

UPDATE world SET population = NULL WHERE population=''; 
UPDATE world SET gdp = NULL WHERE gdp=''; 
UPDATE teacher SET dept = NULL WHERE dept='';
UPDATE teacher SET mobile = NULL where mobile='';
