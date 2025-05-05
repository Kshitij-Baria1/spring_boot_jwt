-- insert roles
insert into "role" (name) values ('ROLE_USER');
insert into "role" (name) values ('ROLE_ADMIN');

-- insert users
insert into "user" (username, password) values ('user', '$2a$12$mOcjPbQnteoDALNEVowbweb1m/FKdCDsGJxcXGyfuhtGx41vaB1K2');
insert into "user" (username, password) values ('admin', '$2a$12$mOcjPbQnteoDALNEVowbweb1m/FKdCDsGJxcXGyfuhtGx41vaB1K2');

-- assign roles to users
insert into "user_roles" values (1, 1);
insert into "user_roles" values (2, 1);
insert into "user_roles" values (2, 2);