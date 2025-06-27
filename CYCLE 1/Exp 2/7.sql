alter table employee add constraint FK_departmentnumbers foreign key(dept_no) references department(dept_no) on delete cascade;
