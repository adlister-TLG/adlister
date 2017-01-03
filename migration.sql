USE adlister_db;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS pictures;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(240) NOT NULL,
  email VARCHAR(240) NOT NULL,
  password VARCHAR(255) NOT NULL,
  bio TEXT,
  skills TEXT,
  PRIMARY KEY (id)
);
CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(240) NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);
CREATE TABLE images (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  img_location VARCHAR(50) NULL,
  description VARCHAR (250) NULL,
  url VARCHAR(250) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
SELECT * from users;
SELECT * from images;
INSERT INTO users (username, email, password)
VALUES
  ('admin', 'admin@admin.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('john_snow', 'joe@joe.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('danny', 'danny@dan.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('drew', 'drew@drew.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('johnny', 'jon@jon.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('mikey', 'mikey@mike.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('mark', 'mark@mark.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq'),
  ('vinny', 'vin@vin.com', '$2a$12$P4EO3NigCVDe5QD5YEDx4Og4p80VrLu8ka4Hp.qc97YcsNVIjkytq');
INSERT INTO images (user_id, img_location, description, url)
VALUES ('1', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_01.png'),
  ('2', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_02.png'),
  ('3', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_03.png'),
  ('4', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_04.png'),
  ('5', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_05.png'),
  ('6', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_06.png'),
  ('7', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_07.png'),
  ('8', 'clown hq', 'just clowning around','/pictures/profile/profile_pic_08.png');

INSERT INTO ads (user_id, title, description) VALUES
  ('1', 'Jingle The Juggler', 'Lorem ipsum dolor sit amet molestie lorem eget risus. Fusce est viverra. Ultricies tristique mattis. Vestibulum lorem molestie convallis amet sem malesuada diam pellentesque. Dui mauris sapien etiam metus enim sem dignissim mi. Laoreet dolor velit vel interdum neque eleifend feugiat praesent. Ut et blandit. Dui congue eleifend. Orci animi nec. In sed ultrices vel ut semper. Facilisis ut a adipiscing eget a enim wisi adipiscing curabitur parturient dolor. Accumsan leo nunc lacus velit fringilla lectus elementum nec. A ac erat a pellentesque mi. Habitant hendrerit ullamcorper. Et velit justo nunc ante arcu. Gravida eu tellus. Adipiscing quam congue nullam.'),
  ('2', 'Daffodil', 'Lorem ipsum dolor sit amet molestie lorem eget risus. Fusce est viverra. Ultricies tristique mattis. Vestibulum lorem molestie convallis amet sem malesuada diam pellentesque. Dui mauris sapien etiam metus enim sem dignissim mi. Laoreet dolor velit vel interdum neque eleifend feugiat praesent. Ut et blandit. Dui congue eleifend. Orci animi nec. In sed ultrices vel ut semper. Facilisis ut a adipiscing eget a enim wisi adipiscing curabitur parturient dolor. Accumsan leo nunc lacus velit fringilla lectus elementum nec. A ac erat a pellentesque mi. Habitant hendrerit ullamcorper. Et velit justo nunc ante arcu. Gravida eu tellus. Adipiscing quam congue nullam.'),
  ('3', 'Sadboy The Clown', 'Lorem ipsum dolor sit amet molestie lorem eget risus. Fusce est viverra. Ultricies tristique mattis. Vestibulum lorem molestie convallis amet sem malesuada diam pellentesque. Dui mauris sapien etiam metus enim sem dignissim mi. Laoreet dolor velit vel interdum neque eleifend feugiat praesent. Ut et blandit. Dui congue eleifend. Orci animi nec. In sed ultrices vel ut semper. Facilisis ut a adipiscing eget a enim wisi adipiscing curabitur parturient dolor. Accumsan leo nunc lacus velit fringilla lectus elementum nec. A ac erat a pellentesque mi. Habitant hendrerit ullamcorper. Et velit justo nunc ante arcu. Gravida eu tellus. Adipiscing quam congue nullam.'),
  ('4', 'Honker', 'Lorem ipsum dolor sit amet molestie lorem eget risus. Fusce est viverra. Ultricies tristique mattis. Vestibulum lorem molestie convallis amet sem malesuada diam pellentesque. Dui mauris sapien etiam metus enim sem dignissim mi. Laoreet dolor velit vel interdum neque eleifend feugiat praesent. Ut et blandit. Dui congue eleifend. Orci animi nec. In sed ultrices vel ut semper. Facilisis ut a adipiscing eget a enim wisi adipiscing curabitur parturient dolor. Accumsan leo nunc lacus velit fringilla lectus elementum nec. A ac erat a pellentesque mi. Habitant hendrerit ullamcorper. Et velit justo nunc ante arcu. Gravida eu tellus. Adipiscing quam congue nullam.'),
  ('5', 'Lloyd The Drunk Clown', 'Lorem ipsum dolor sit amet molestie lorem eget risus. Fusce est viverra. Ultricies tristique mattis. Vestibulum lorem molestie convallis amet sem malesuada diam pellentesque. Dui mauris sapien etiam metus enim sem dignissim mi. Laoreet dolor velit vel interdum neque eleifend feugiat praesent. Ut et blandit. Dui congue eleifend. Orci animi nec. In sed ultrices vel ut semper. Facilisis ut a adipiscing eget a enim wisi adipiscing curabitur parturient dolor. Accumsan leo nunc lacus velit fringilla lectus elementum nec. A ac erat a pellentesque mi. Habitant hendrerit ullamcorper. Et velit justo nunc ante arcu. Gravida eu tellus. Adipiscing quam congue nullam.'),
  ('6', 'Ray The Unicyclist', 'Lorem ipsum dolor sit amet molestie lorem eget risus. Fusce est viverra. Ultricies tristique mattis. Vestibulum lorem molestie convallis amet sem malesuada diam pellentesque. Dui mauris sapien etiam metus enim sem dignissim mi. Laoreet dolor velit vel interdum neque eleifend feugiat praesent. Ut et blandit. Dui congue eleifend. Orci animi nec. In sed ultrices vel ut semper. Facilisis ut a adipiscing eget a enim wisi adipiscing curabitur parturient dolor. Accumsan leo nunc lacus velit fringilla lectus elementum nec. A ac erat a pellentesque mi. Habitant hendrerit ullamcorper. Et velit justo nunc ante arcu. Gravida eu tellus. Adipiscing quam congue nullam.');
