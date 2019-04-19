--ALTER TABLE POST
--  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP ;

-- Users
-- password in plaintext: "password"
INSERT INTO user (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user@mail.com', 'user', 'Name', 'Surname',
   1);


-- Roles
INSERT INTO role (role_id, role)
VALUES (1, 'ROLE_ADMIN') ;
INSERT INTO role (role_id, role)
VALUES (2, 'ROLE_USER') ;

-- User Roles
INSERT INTO user_role (user_id, role_id)
VALUES (1, 1) ;
INSERT INTO user_role (user_id, role_id)
VALUES (1, 2) ;


-- Posts
INSERT INTO post (post_id, user_id, title, body, create_date)
VALUES (1, 1, 'Title 1',
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
        --         CURRENT_TIMESTAMP());
        {ts '2016-10-19 11:10:13.247'}) ;


-- Comments
INSERT INTO comment (comment_id,post_id, user_id, body, create_date)
VALUES (1,1, 1,
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
        CURRENT_TIMESTAMP());
