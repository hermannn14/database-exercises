USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        name  VARCHAR(100) NOT NULL,
                        release_date TEXT NOT NULL,
                        sales int UNSIGNED,
                        genre VARCHAR(100),
                            PRIMARY KEY (id)
);
show tables;
describe albums;