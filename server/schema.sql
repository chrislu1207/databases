CREATE DATABASE chat;

USE chat;

/* Create other tables and define schemas for them here! */

CREATE TABLE users (
  userId int(20),
  name varchar(20),
  PRIMARY KEY (userId)
);

CREATE TABLE rooms (
  roomId int(20),
  name varchar(20),
  PRIMARY KEY (roomId)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  messageId int(20),
  userId int(20),
  roomId int(20),
  messageText varchar(20000),
  PRIMARY KEY (messageId),
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (roomId) REFERENCES rooms(roomId)
);

INSERT INTO users (userId, name)
VALUES (1, 'Dunsjohn');

INSERT INTO rooms (roomId, name)
VALUES (2, 'lobby');

INSERT INTO messages (messageId, userId, roomId, messageText)
VALUES (3, 1, 2, 'This is a dummy message');


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

