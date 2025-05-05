-- role table
create table "role" (
    id bigint auto_increment primary key,
    name varchar(64) not null unique
);

-- user table
create table "user" (
    id bigint auto_increment primary key,
    username varchar(64) not null unique,
    password varchar(64) not null
);

-- many to many relation between user and roles
create table "user_roles" (
    user_id bigint not null,
    role_id bigint not null,
    primary key (user_id, role_id),
    foreign key (user_id) references "user"(id),
    foreign key (role_id) references "role"(id)
);