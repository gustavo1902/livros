-- Creating Table Author
CREATE TABLE `db`.`author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `nationality` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`));

-- Creating Table Book
CREATE TABLE `db`.`book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(120) NOT NULL,
  `publication_year` INT NOT NULL,
  `pages` INT NOT NULL,
  `author_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_author_book_idx` (`author_id` ASC),
  CONSTRAINT `fk_author_book`
    FOREIGN KEY (`author_id`)
    REFERENCES `db`.`author` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- Inserting into author table
INSERT INTO `db`.`author` (`id`, `first_name`, `last_name`, `nationality`) VALUES ('1', 'J. K.', 'Rowling', 'British');
INSERT INTO `db`.`author` (`id`, `first_name`, `last_name`, `nationality`) VALUES ('2', 'J. R. R.', 'Tolkien', 'South African');
INSERT INTO `db`.`author` (`id`, `first_name`, `last_name`, `nationality`) VALUES ('3', 'Alexandre', 'Dumas', 'French');
INSERT INTO `db`.`author` (`id`, `first_name`, `last_name`, `nationality`) VALUES ('4', 'Arthur Conan', 'Doyle', 'British');
INSERT INTO `db`.`author` (`id`, `first_name`, `last_name`, `nationality`) VALUES ('5', 'Agatha', 'Christie', 'British');
INSERT INTO `db`.`author` (`id`, `first_name`, `last_name`, `nationality`) VALUES ('6', 'Machado', 'de Assis', 'Brazilian');

-- Inserting into book table
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('1', 'Harry Potter and the Philosophers Stone', '1997', '223', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('2', 'Harry Potter and the Chamber of Secrets', '1997', '251', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('3', 'Harry Potter and the Prisoner of Azkaban', '1999', '317', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('4', 'Harry Potter and the Goblet of Fire', '2000', '636', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('5', 'Harry Potter and the Order of the Phoenix', '2003', '766', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('6', 'Harry Potter and the Half-Blood Prince', '2005', '607', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('7', 'Harry Potter and the Deathly Hallows', '2009', '607', '1');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('8', 'The Silmarillion', '2001', '384', '2');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('9', 'The Hobbit', '1986', '320', '2');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('10', 'The Fellowship of the Ring', '1988', '432', '2');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('11', 'The Two Towers', '1982', '352', '2');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('12', 'The Return of the King', '1986', '464', '2');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('13', 'The Count of Monte Cristo', '2003', '1136', '3');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('14', 'The Three Musketeers', '2007', '700', '3');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('15', 'The Hound of the Baskervilles', '1994', '248', '4');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('16', 'The Sign of Four', '2010', '94', '4');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('17', 'A Study in Scarlet', '2009', '192', '4');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('18', 'The Body in the Library', '2011', '224', '5');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('19', 'Murder on the Orient Express', '2011', '288', '5');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('20', 'And Then There Were None', '2011', '272', '5');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('21', 'Death on the Nile', '2011', '352', '5');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('22', 'The Posthumous Memoirs of Brás Cubas', '1998', '240', '6');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('23', 'Dom Casmurro', '2013', '208', '6');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('24', 'Quincas Borba', '1999', '240', '6');
INSERT INTO `db`.`book` (`id`, `title`, `publication_year`, `pages`, `author_id`) VALUES ('25', 'The Alienist', '2014', '96', '6');