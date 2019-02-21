use chirpr;

CREATE TABLE Users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name  varchar(50) not null,
  email  varchar(100) not null,
  password  text null,
  _created datetime default current_timestamp
);

CREATE TABLE Chirps (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid int not null,
    text VARCHAR(100) NOT NULL,
    location VARCHAR(50) NULL,
    _created DATETIME DEFAULT CURRENT_TIMESTAMP
);

alter table Chirps
add constraint fk_userid
foreign key (userid)
references Users(id);

select * from users;
delete from users where id=1;

insert into users ( name, email, password)
values( 'Timmy', 'Timmy@covalence.com', 'Timmy happycoding');
insert into users ( name, email, password)
values( 'Charlie', 'charlie@covalence.com', 'Charlie happycoding');
insert into users ( name, email, password)
values( 'John', 'John@covalence.com', 'John happycoding');
insert into users ( name, email, password)
values( 'Marky', 'Marky@covalence.com', 'Marky happycoding');
insert into users ( name, email, password)
values( 'Ricky', 'Ricky@covalence.com', 'Ricky happycoding');
insert into users ( name, email, password)
values( 'Danny', 'Danny@covalence.com', ' Danny happycoding');
insert into users ( name, email, password)
values( 'Terry', 'Terry@covalence.com', 'Terry happycoding');
insert into users ( name, email, password)
values( 'Mikey', 'Mikey@covalence.com', 'Mikey happycoding');
insert into users ( name, email, password)
values( 'Davey', 'Davey@covalence.com', 'Davey happycoding');

select * from chirps;

insert into chirps ( userid, text, location)
values( 1, 'mytext1', 'Alabama');
insert into chirps ( userid, text, location)
values( 2, 'mytext2', 'Alaska');
insert into chirps ( userid, text, location)
values( 3, 'mytext3', 'Arizona');
insert into chirps ( userid, text, location)
values( 4, 'mytext4', 'Arkansas');
insert into chirps ( userid, text, location)
values( 5, 'mytext5', 'California');
insert into chirps ( userid, text, location)
values( 6, 'mytext6', 'Colorado');
insert into chirps ( userid, text, location)
values( 7, 'mytext7', 'Delaware');
insert into chirps ( userid, text, location)
values( 8, 'mytext8', 'Connecticut');
insert into chirps ( userid, text, location)
values( 9, 'mytext9', 'Denver');
insert into chirps ( userid, text, location)
values( 10, 'mytext10', 'Birmingham');

select name from users;

select u.name,
c.text as chirp
from users u
join chirps c on c.userid = u.id;

CREATE TABLE mentions (
    userid INT NOT NULL,
    chirpid INT NOT NULL,
    _created DATETIME DEFAULT CURRENT_TIMESTAMP
);

alter table mentions
add constraint fk_mentionsuserid
foreign key (userid)
references Users(id);

alter table mentions
add constraint fk_chirpid
foreign key (chirpid)
references chirps(userid);

select * from mentions;

insert into mentions (userid, chirpid)
select u.id, c.userid
from users u, chirps c
where c.userid = u.id;

