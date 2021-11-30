CREATE USER 'springstudent'@'localhost' IDENTIFIED BY 'Springstudent@1';

GRANT ALL PRIVILEGES ON * . * TO 'springstudent'@'localhost';

ALTER USER 'springstudent'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Springstudent@1';
