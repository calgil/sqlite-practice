CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    motto TEXT
);
INSERT INTO users (first_name, last_name, motto)
VALUES("Jon", "Higgz", "I love coding");
INSERT INTO users (first_name, last_name, motto)
VALUES("Andrey", "Rusterton", "I love coding even more");
INSERT INTO users (first_name, last_name, motto)
VALUES("Peter", "Garboni", "I love coding even more");
CREATE TABLE dogs(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);
INSERT INTO dogs (name)
VALUES("DOOMSLAYER");
INSERT INTO dogs (name)
VALUES("Zoey");
INSERT INTO dogs (name)
VALUES("Jefferey");
CREATE TABLE favorites (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    dog_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (dog_id) REFERENCES dogs (id),
    unique(user_id, dog_id)
);
INSERT INTO favorites (user_id, dog_id)
VALUES(3, 1);
INSERT INTO favorites (user_id, dog_id)
VALUES(1, 1);
INSERT INTO favorites (user_id, dog_id)
VALUES(2, 1);
INSERT INTO favorites (user_id, dog_id)
VALUES(1, 3);
INSERT INTO favorites (user_id, dog_id)
VALUES(2, 2);