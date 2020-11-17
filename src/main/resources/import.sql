DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS bid;
DROP TABLE IF EXISTS lot;
DROP TABLE IF EXISTS users;




CREATE TABLE IF NOT EXISTS users (id INTEGER NOT NULL AUTO_INCREMENT, username VARCHAR(255), login VARCHAR(255), password VARCHAR(255), token TEXT, ref_token TEXT, balance DOUBLE, userRole integer, userphoto TEXT, PRIMARY KEY (id));

CREATE TABLE IF NOT EXISTS lot (id INTEGER primary key NOT NULL AUTO_INCREMENT, sellerId INTEGER, title VARCHAR(255), price BIGINT, photo VARCHAR(255), maxPrice BIGINT, startTime BIGINT, duration BIGINT, description TEXT, status integer, highestBid integer, bidderid integer,  bidNumber integer, photoNumber integer, category TEXT, FOREIGN KEY (sellerId) REFERENCES users(id) ON DELETE CASCADE);
INSERT into lot VALUES (1, 123, "tittle1", 1, "photo1", 1, 1, 1, "description1", 0, 5, 12345,0, "Sport");
INSERT into lot VALUES (2, 123, "tittle2", 1, "photo1", 1, 1, 1, "description1", 0, 5, 12345, 0, "Sport;Techika;Goods");
INSERT into lot VALUES (3, 1234, "tittle3", 1, "photo1", 1, 1, 1, "description1", 0, 5, 12346,0, "Sport;Goods;Techika");
INSERT into lot VALUES (4, 1234, "tittle4", 1, "photo1", 1, 1, 1, "description1", 0, 5, 12346, 0, "Goods;Techika;Color");

CREATE TABLE IF NOT EXISTS bid (id INTEGER primary key NOT NULL AUTO_INCREMENT,lotid INTEGER, bidderId INTEGER, price INTEGER, statusOfBid INTEGER, FOREIGN KEY (bidderId) REFERENCES users(id) ON DELETE CASCADE, FOREIGN KEY (lotid) REFERENCES lot(id) ON DELETE CASCADE);
INSERT into bid VALUES (5, 3, 12345, 3, 1);
INSERT into bid VALUES (1,4, 12345, 2, 1);
INSERT into bid VALUES (2,3, 123456, 1, 1);
INSERT into bid VALUES (3,4, 123456, 4, 1);

CREATE TABLE if not exists feedback (id INTEGER primary key NOT NULL AUTO_INCREMENT, comment TEXT, mark integer, lotid integer, username VARCHAR(256), userid integer, FOREIGN KEY (userid) REFERENCES users(id) ON DELETE SET NULL, FOREIGN KEY (lotid) REFERENCES lot(id) ON DELETE CASCADE);
INSERT into feedback VALUES (1, "lolita1", 5, 3, "admin2" 1234);
INSERT into feedback VALUES (2, "lolita2", 5, 2, "admin2",1234);
INSERT into feedback VALUES (3, "lolita3", 5, 1, "admin3", 12345);
INSERT into feedback VALUES (4, "lolita4", 5, 4, "admin4", 123456);

-- SELECT * FROM users;
-- SELECT * FROM lot;
-- SELECT * FROM bid;
-- SELECT * FROM feedback;