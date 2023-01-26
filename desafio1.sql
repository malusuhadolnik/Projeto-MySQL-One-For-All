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

  CREATE TABLE SpotifyClone.albuns(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      album_nome VARCHAR(200) NOT NULL,
      ano_lancamento YEAR NOT NULL,
      artista_id INT NOT NULL
      FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
      cancao_id INT PRIMARY KEY AUTO_INCREMENT,
      cancao_nome VARCHAR(200) NOT NULL,
      album_id INT NOT NULL
      duracao_segundos INT NOT NULL
      FOREIGN KEY (album_id) REFERENCES albuns (album_id)
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

  INSERT INTO SpotifyClone.albuns (album_nome, ano_lancamento, artista_id)
  VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4);
    ('Somewhere Far Beyond', 2007, 5);
    ('I Put A Spell On You', 2012, 6);

  INSERT INTO SpotifyClone.cancoes (cancao_nome, album_id, duracao_segundos)
  VALUES
    ('BREAK MY SOUL', 1, 279),
    ('VIRGO’S GROOVE', 1, 369),
    ('ALIEN SUPERSTAR', 1, 116),
    ('Don’t Stop Me Now', 2, 203),
    ('Under Pressure', 3, 152),
    ('Como Nossos Pais', 4, 105);
    ('O Medo de Amar é o Medo de Ser Livre', 5, 207);
    ('Samba em Paris', 6, 267);
    ('The Bard’s Song', 7, 244);
    ('Feeling Good', 8, 100);