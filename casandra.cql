#cd ~/Downloads
#tar -xvzf apache-cassandra-4.0.9-bin.tar.gz
#mv apache-cassandra-4.0.9 ~/cassandra
#echo 'export CASSANDRA_HOME="$HOME/cassandra"' >> ~/.bashrc
#echo 'export PATH="$CASSANDRA_HOME/bin:$PATH"' >> ~/.bashrc
#source ~/.bashrc
#cassandra
#cqlsh


cqlsh
CREATE KEYSPACE mykeyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mykeyspace;
CREATE TABLE mykeyspace.yeshKhriststjd (
    umid text PRIMARY KEY,
    date timestamp,
    tweet text,
    likes int
);


COPY mykeyspace.yeshKhriststjd (umid, date, tweet, likes)
FROM '/home/xjoex/Downloads/AXNpreprocessedelon.csv'
WITH HEADER = true;

SELECT * FROM mykeyspace.yeshKhriststjd;


#For raw data
CREATE TABLE mykeyspace.stjdyeshkhrist (
    umid TEXT PRIMARY KEY,
    date TIMESTAMP,
    tweet TEXT,
    likes INT
);
COPY mykeyspace.stjdyeshkhrist (umid, date, tweet, likes) FROM '/home/xjoex/Downloads/AXNElon2122Full.csv' WITH HEADER = true;


