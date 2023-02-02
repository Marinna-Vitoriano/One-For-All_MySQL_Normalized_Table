DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  
  CREATE TABLE SpotifyClone.subscription(
      subscription_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      subscription_title VARCHAR(180) NOT NULL,
      subscription_price DECIMAL(3,2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
      user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      user_name VARCHAR(180) NOT NULL,
      user_age INT,
      subscription_id INT,
      subscription_date DATE,
        FOREIGN KEY (subscription_id) REFERENCES subscription (subscription_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artists(
      artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      artist_name VARCHAR(180) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albums(
      album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      artist_id INT,
      album_title VARCHAR(180) NOT NULL,
      release_year INT,
        FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.songs(
      song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      album_id INT,
      song_title VARCHAR(180) NOT NULL,
      song_duration INT,
      FOREIGN KEY (album_id) REFERENCES albums (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.reprodution_history(
      user_id INT,
      song_id INT,
      reprodution_date DATETIME,
      CONSTRAINT PRIMARY KEY (user_id, song_id),
        FOREIGN KEY (song_id) REFERENCES songs (song_id),
        FOREIGN KEY (user_id) REFERENCES users (user_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.followers(
      user_id INT,
      artist_id INT,
      CONSTRAINT PRIMARY KEY (user_id, artist_id),
        FOREIGN KEY (user_id) REFERENCES users (user_id),
        FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.subscription (subscription_id, subscription_title, subscription_price)
  VALUES
    (1, 'gratuito', 0.00),
    (2, 'pessoal', 6.99),
    (3, 'familiar', 7.99),
    (4, 'universitário', 5.99);

  INSERT INTO SpotifyClone.users (user_id, user_name, user_age, subscription_id, subscription_date)
  VALUES
    (1, 'Barbara Liskov', 82, 1, '2019-10-20'),
    (2, 'Robert Cecil Martin', 58, 1, '2017-01-06'),
    (3, 'Ada Lovelace', 37, 3, '2017-12-30'),
    (4, 'Martin Fowler', 46, 3, '2017-01-17'),
    (5, 'Sandi Metz', 58, 3, '2018-04-29'),
    (6, 'Paulo Freire', 19, 4, '2018-02-14'),
    (7, 'Bell Hooks', 26, 4, '2018-01-05'),
    (8, 'Christopher Alexander', 85, 2, '2019-06-05'),
    (9, 'Judith Butler', 45, 2, '2020-05-13'),
    (10, 'Jorge Amado', 58, 2, '2017-02-17');

  INSERT INTO SpotifyClone.artists (artist_id, artist_name)
  VALUES
    (1, 'Baco Exu do Blues'),
    (2, 'Beyoncé'),
    (3, 'Blind Guardian'),
    (4, 'Elis Regina'),
    (5, 'Nina Simone'),
    (6, 'Queen');

  INSERT INTO SpotifyClone.albums (album_id, artist_id, album_title, release_year)
  VALUES
    (1, 2, 'Renaissance', 2022),
    (2, 6, 'Jazz', 1978),
    (3, 6, 'Hot Space', 1982),
    (4, 4, 'Falso Brilhante', 1998),
    (5, 4, 'Vento de Maio', 2001),
    (6, 1, 'QVVJFA?', 2003),
    (7, 3, 'Somewhere Far Beyond', 2007),
    (8, 5, 'I Put A Spell On You', 2012);

  INSERT INTO SpotifyClone.songs (song_id, album_id, song_title, song_duration)
  VALUES
    (1, 1, 'ALIEN SUPERSTAR', 116),
    (2, 1, 'BREAK MY SOUL', 279),
    (3, 1, 'VIRGO’S GROOVE', 369),
    (4, 2, 'Don’t Stop Me Now', 203),
    (5, 3, 'Under Pressure', 152),
    (6, 4, 'Como Nossos Pais', 105),
    (7, 5, 'O Medo de Amar é o Medo de Ser Livre', 207),
    (8, 6, 'Samba em Paris', 267),
    (9, 7, 'The Bard’s Song', 244),
    (10, 8, 'Feeling Good', 100);

    INSERT INTO SpotifyClone.reprodution_history (user_id, song_id, reprodution_date)
  VALUES
    (1, 8, '2022-02-28 10:45:55'),
    (1, 3, '2020-05-02 05:30:35'),
    (1, 10, '2020-03-06 11:22:33'),
    (2, 10, '2022-08-05 08:05:17'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 10, '2020-11-13 16:55:13'),
    (3, 3, '2020-12-05 18:38:30'),
    (4, 8, '2021-08-15 17:10:10'),
    (5, 8, '2022-01-09 01:44:33'),--
    (5, 5, '2020-08-06 15:23:43'),
    (6, 7, '2017-01-24 00:31:17'),
    (6, 2, '2017-10-12 12:35:20'),
    (7, 4, '2011-12-15 22:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
    (10, 1, '2015-12-13 08:30:22');

    INSERT INTO SpotifyClone.followers (user_id, artist_id)
  VALUES
    (1, 4),
    (1, 6),
    (1, 2),
    (2, 2),
    (2, 4),
    (3, 6),
    (4, 1),
    (5, 3),
    (5, 5),
    (6, 5),
    (6, 2),
    (7, 5),
    (9, 4),
    (10, 6);
    