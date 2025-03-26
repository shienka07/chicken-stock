CREATE TABLE accounts
(
    account_id int primary key auto_increment,
    nickname varchar(255) not null unique
);

INSERT INTO accounts (nickname)
values
    ('리엔'),
    ('산디'),
    ('청'),
    ('하지'),
    ('이리'),
    ('망이');