-- Preloaded users.  Note how we stay well away from the autogenerated ID space.
insert into serviceuser(id, active, challenge, email, login) values(1000000, true, 'password', 'admin@headmaster.test', 'admin');
insert into userrole(id, rolename, login) values(1000000, 'HEADMASTER', 'admin');

insert into serviceuser(id, active, challenge, email, login) values(1000001, true, 'password-noroles', 'noroles@headmaster.test', 'noroles');

-- Preloaded students.
insert into student(id, firstname, lastname, active, expectedgraduationyear) values(1000000, 'Tim', 'Berners-Lee', true, 2016);
insert into student(id, firstname, lastname, active, expectedgraduationyear) values(1000001, 'Vint', 'Cerf', true, 2015);
insert into student(id, firstname, lastname, active, expectedgraduationyear) values(1000002, 'Don', 'Knuth', true, 2015);

-- Preloaded events.
insert into event(id, datetime, description, title) values(1000000, '2012-07-28 10:31:03', 'The big one', 'Summit');

insert into event_student(event_id, student_id, attendees_order) values(1000000, 1000002, 0);
insert into event_student(event_id, student_id, attendees_order) values(1000000, 1000000, 1);
insert into event_student(event_id, student_id, attendees_order) values(1000000, 1000001, 2);
