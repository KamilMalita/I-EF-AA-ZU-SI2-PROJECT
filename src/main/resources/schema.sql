/*CREATE TABLE AUTHOR
(
    id          BIGINT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100)  NOT NULL,
    surname     VARCHAR(150)  NOT NULL,
    description VARCHAR(2000) NULL,
    born_date   timestamp
);

CREATE TABLE BOOK
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    author_id    BIGINT        NOT NULL,
    title        VARCHAR(150)  NOT NULL,
    description  VARCHAR(2000) NULL,
    release_date timestamp
);

CREATE TABLE USERS
(
    username VARCHAR(50) PRIMARY KEY,
    password varchar(200) NOT NULL,
    name varchar(100) NOT NULL,
    surname varchar(100) NOT NULL,
    enabled  BOOLEAN      NOT NULL,
    created TIMESTAMP,
    email varchar(200)
);

CREATE TABLE AUTHORITIES
(
    username VARCHAR(50) PRIMARY KEY ,
    authority VARCHAR(50)
);

ALTER TABLE AUTHORITIES
    ADD CONSTRAINT username
        FOREIGN KEY (username) REFERENCES USERS (username);

ALTER TABLE BOOK
    ADD CONSTRAINT book_author_id
        FOREIGN KEY (author_id) REFERENCES AUTHOR (id);*/