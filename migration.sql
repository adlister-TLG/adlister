USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS pictures;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(240) NOT NULL,
  email    VARCHAR(240) NOT NULL,
  password VARCHAR(255) NOT NULL,
  bio      TEXT,
  skills   TEXT,
  PRIMARY KEY (id)
);
CREATE TABLE ads (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id     INT UNSIGNED NOT NULL,
  title       VARCHAR(240) NOT NULL,
  description TEXT         NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
    ON DELETE CASCADE
);
CREATE TABLE images (
  id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id      INT UNSIGNED NOT NULL,
  img_location VARCHAR(50)  NULL,
  description  VARCHAR(250) NULL,
  url          VARCHAR(250) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);
SELECT *
FROM users
ORDER BY RAND()
LIMIT 1;
SELECT *
FROM images;
SELECT *
FROM ads;

SELECT * from users where username = 'john_snow';


INSERT INTO users (username, email, password, bio, skills) VALUES
  ('admin', 'admin@admin.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'admin bio', 'admin skills'),
  ('john_snow', 'joe@joe.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'john snow bio', 'john snow skills'),
  ('danny', 'danny@dan.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'danny bio', 'danny skills'),
  ('drew', 'drew@drew.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'drew bio', 'drew skills'),
  ('johnny', 'jon@jon.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'Johnny bio', 'johnny skills'),
  ('mikey', 'mikey@mike.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'Mikey bio', 'Mikey skills'),
  ('mark', 'mark@mark.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'Mark bio', 'Mark skills'),
  ('vinny', 'vin@vin.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq', 'Vinny bio', 'Vinny skills');

INSERT INTO images (user_id, img_location, description, url) VALUES
  ('1', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_01.png'),
  ('2', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_02.png'),
  ('3', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_03.png'),
  ('4', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_04.png'),
  ('5', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_05.png'),
  ('6', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_06.png'),
  ('7', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_07.png'),
  ('8', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_08.png');

INSERT INTO ads (user_id, title, description) VALUES
  (2, 'John Snow juggles balls', 'Do you need a talented ball juggler? Look no further than john snow the world renown juggler of balls!'),
  (3, 'Danny spits hot fire!', 'Do you need a talented fire breather? Look no further than Danny the world renown Fire breather!'),
  (4, 'Drew knows magic', 'Do you need a talented magician? Look no further than Drew the world renown Magician!'),
  (5, 'Johnny is a Balloon Genius', 'Do you need a talented balloon maker? Look no further than Johnny  the world renown maker of balloons!'),
  (6, 'Mikey is an Acrobat', 'Do you need a talented Acrobat? Look no further than john snow the world renown tumbler and trapeeze artist!'),
  (7, 'Mark the Clown', 'Do you need a talented Clown for kids parties? Look no further than Mark, the world renown childrens party clown!'),
  (8, 'Vinny is Amazeballs', 'Do you need a talented Clown for an event? Look no further than Vinny, the world renown Clown from Italy!');

