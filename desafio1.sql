DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      artista_nome VARCHAR(200) NOT NULL,
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.planos(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      plano VARCHAR(50) NOT NULL,
      valor_plano DOUBLE NOT NULL,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.artistas (artista_nome)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.planos (plano, valor_plano)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99);
    ('universitário', 5.99);
    ('universitário', 6.99);