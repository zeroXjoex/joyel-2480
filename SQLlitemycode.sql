#sqlite3
#.open /home/xjoex/mydatabase.db

#preprocessd dataset - Dataset name - yeshkhrist.db, Table - XNpreprocessedelon

sqlite> CREATE TABLE XNpreprocessedelon (
  UMID TEXT,
  Date TEXT,
  Tweet TEXT,
  Likes INTEGER
);
.headers on
.mode csv
.import /home/xjoex/Downloads/XNpreprocessedelon.csv XNpreprocessedelon
SELECT * FROM XNpreprocessedelon;



#Orginal Dataset - Database name - elonmusktweet.db Table name- tweet 

.open elonmusktweet.db
CREATE TABLE tweet (
  UMID INT,
  Date DATE,
  Tweet TEXT,
  Likes INT
);

.mode csv
.import '/home/xjoex/Downloads/Elon2122Full.csv' tweet
SELECT * FROM tweet;


