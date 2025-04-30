-- Insert Roles
INSERT INTO "role" (name) VALUES ('ROLE_ADMIN');
INSERT INTO "role" (name) VALUES ('ROLE_USER');

-- Insert User
INSERT INTO "user" (username, password) VALUES ('admin', '$2a$12$TlFErZWE/QVeyGzo/ORWzODTkbMEnDXGHWMCsD71aizEoPkwAibGS'); -- In a real app, store hashed passwords

-- Assign Roles to the User
INSERT INTO user_roles (user_id, role_id) VALUES (1, 1); -- Assign ROLE_ADMIN to User 1
INSERT INTO user_roles (user_id, role_id) VALUES (1, 2); -- Assign ROLE_USER to User 1