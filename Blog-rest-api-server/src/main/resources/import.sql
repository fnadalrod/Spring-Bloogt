/* Populate tables */
INSERT INTO user (id, avatar, created_at, password, role, surname,username,email) VALUES(1, 'noAvatar.jpg', "2020-06-09 17:12:00", 'mustSecure', 'ROLE_USER', 'nadal','francisco','francisconadal1@gmail.com');
INSERT INTO user (id, avatar, created_at, password, role, surname,username,email) VALUES(2, 'noAvatar.jpg', "2019-12-13 11:32:45", 'mustSecure', 'ROLE_USER', 'nadal2','francisco2','francisconadal2@gmail.com');

INSERT INTO category(id, name) VALUES(1, "Technology");
INSERT INTO category(id, name) VALUES(2, "News");
INSERT INTO category(id, name) VALUES(3, "RemovableCategory");

INSERT INTO post(id, content, created_at, title, category_id, user_id) VALUES(1,"this is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the postthis is the post this is the post","2021-11-05 18:06:12", "THE FIRST POST", 1,1);
INSERT INTO post(id, content, created_at, title, category_id, user_id) VALUES(2,"second post","2020-06-09 17:12:00", "THE SECOND POST", 2,1);

INSERT INTO comments(id, message, user_id, post_id, created_at) VALUES(1,"Este es el primer comentario", 1,1,"2021-11-05 18:06:12");
INSERT INTO comments(id, message, user_id, post_id, created_at) VALUES(2,"Este es el segundo comentario", 1,1,"2019-12-13 11:32:45");
INSERT INTO comments(id, message, user_id, post_id, created_at) VALUES(3,"Este es un comentario aparte", 1,2,"2020-06-09 17:12:00");

INSERT INTO hashtag(id, name) VALUES(1, "VeryInteresting");
INSERT INTO hashtag(id, name) VALUES(2, "FirstPost");
INSERT INTO hashtag(id, name) VALUES(3, "SecondPost");

INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(1, 1);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(2, 1);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(2, 3);
INSERT INTO hashtag_post(post_id, hashtag_id) VALUES(1, 2);