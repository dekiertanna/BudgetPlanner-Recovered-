CREATE TABLE `User` (Id int(10) NOT NULL AUTO_INCREMENT, Email varchar(50) NOT NULL UNIQUE, Password varchar(255) NOT NULL, PRIMARY KEY (Id), UNIQUE INDEX (Id)) ENGINE=InnoDB;
CREATE TABLE Event (Id int(10) NOT NULL AUTO_INCREMENT, Name varchar(50) NOT NULL, DateTimeStart timestamp NOT NULL, DateTimeEnd timestamp NOT NULL, Description varchar(100), UserId int(10) NOT NULL, PRIMARY KEY (Id), UNIQUE INDEX (Id)) ENGINE=InnoDB;
ALTER TABLE Event ADD INDEX FKEvent178188 (UserId), ADD CONSTRAINT FKEvent178188 FOREIGN KEY (UserId) REFERENCES `User` (Id);
