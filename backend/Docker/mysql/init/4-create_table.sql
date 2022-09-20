 /* CREATE DATABASE */
CREATE DATABASE student;

 /* CREATE TABLE */
CREATE TABLE student.users(
    id int not NULL auto_increment,
    user_name VARCHAR(100) not NULL,
    password VARCHAR(255) not null,
    time DATETIME,
    primary key (id)
) ENGINE = InnoDB;

 /* CREATE TABLE */
CREATE TABLE student.schedules(
    id INT NOT NULL auto_increment,
    user_id INT not NULL,
    ma_1 INT(11),ma_2 INT(11),ma_3 INT(11),ma_4 INT(11),ma_5 INT(11),ma_6 INT(11),
    tu_1 INT(11),tu_2 INT(11),tu_3 INT(11),tu_4 INT(11),tu_5 INT(11),tu_6 INT(11),
    we_1 INT(11),we_2 INT(11),we_3 INT(11),we_4 INT(11),we_5 INT(11),we_6 INT(11),
    th_1 INT(11),th_2 INT(11),th_3 INT(11),th_4 INT(11),th_5 INT(11),th_6 INT(11),
    fr_1 INT(11),fr_2 INT(11),fr_3 INT(11),fr_4 INT(11),fr_5 INT(11),fr_6 INT(11),
    primary key (id),
    foreign key (user_id) references student.users(id),
    foreign key (ma_1) references data_sets.subjects(id),
    foreign key (ma_2) references data_sets.subjects(id),
    foreign key (ma_3) references data_sets.subjects(id),
    foreign key (ma_4) references data_sets.subjects(id),
    foreign key (ma_5) references data_sets.subjects(id),
    foreign key (ma_6) references data_sets.subjects(id),
    foreign key (tu_1) references data_sets.subjects(id),
    foreign key (tu_2) references data_sets.subjects(id),
    foreign key (tu_3) references data_sets.subjects(id),
    foreign key (tu_4) references data_sets.subjects(id),
    foreign key (tu_5) references data_sets.subjects(id),
    foreign key (tu_6) references data_sets.subjects(id),
    foreign key (we_1) references data_sets.subjects(id),
    foreign key (we_2) references data_sets.subjects(id),
    foreign key (we_3) references data_sets.subjects(id),
    foreign key (we_4) references data_sets.subjects(id),
    foreign key (we_5) references data_sets.subjects(id),
    foreign key (we_6) references data_sets.subjects(id),
    foreign key (th_1) references data_sets.subjects(id),
    foreign key (th_2) references data_sets.subjects(id),
    foreign key (th_3) references data_sets.subjects(id),
    foreign key (th_4) references data_sets.subjects(id),
    foreign key (th_5) references data_sets.subjects(id),
    foreign key (th_6) references data_sets.subjects(id),
    foreign key (fr_1) references data_sets.subjects(id),
    foreign key (fr_2) references data_sets.subjects(id),
    foreign key (fr_3) references data_sets.subjects(id),
    foreign key (fr_4) references data_sets.subjects(id),
    foreign key (fr_5) references data_sets.subjects(id),
    foreign key (fr_6) references data_sets.subjects(id)
) ENGINE = InnoDB;