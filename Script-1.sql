CREATE TABLE visitors
(
name varchar not null unique,
date_of_birth date not null unique,
sex varchar not null
);

CREATE TABLE visits
(
visitor varchar references visitors(name),
time timestamp,
trainer varchar
);

alter table visits add column id varchar primary key;

insert into visitors(name, date_of_birth, sex) values ('Ivanov', '2001-01-01', 'Male');


