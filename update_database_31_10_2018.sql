begin;




delete from activities;

rollback;


select * from users;

commit;


select * from activity_comments;


SET SQL_SAFE_UPDATES = 0;


SET FOREIGN_KEY_CHECKS=1;



select * from activities;




select * from activity_likes;


select * from activity_users;


delete from activity_users;


select * from activity_comments,activities where activities.id = activity_comments.activity_id;


begin;

delete from users where id in (148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,164,165);


delete from users where id = 119;




/* edit the constraint of comments  */
ALTER TABLE comments DROP FOREIGN KEY `comments_user_id_foreign` ;

ALTER TABLE comments
ADD CONSTRAINT `comments_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;


/* edit the constraint of hobbies  */
ALTER TABLE hobbies DROP FOREIGN KEY `hobbies_user_id_foreign` ;

ALTER TABLE hobbies
ADD CONSTRAINT `hobbies_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;

/* edit the constraint of user_cate  */

ALTER TABLE user_cate DROP FOREIGN KEY `user_cate_id_foreign` ;

ALTER TABLE user_cate
ADD CONSTRAINT `cate_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;

/* edit the constraint of user_two_  */
ALTER TABLE contacts DROP FOREIGN KEY `contacts_user_one_id_foreign` ;
ALTER TABLE contacts DROP FOREIGN KEY `contacts_user_two_id_foreign` ;


ALTER TABLE contacts
ADD CONSTRAINT `contacts_user_one_id_foreign`
FOREIGN KEY (`user_one_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;


ALTER TABLE contacts
ADD CONSTRAINT `contacts_user_two_id_foreign`
FOREIGN KEY (`user_two_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;

/* edit the constraint of likes  */

ALTER TABLE likes DROP FOREIGN KEY `likes_user_id_foreign` ;

ALTER TABLE likes
ADD CONSTRAINT `likes_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;



select * from users;




select * from users;



delete from users where id = 104;


update users set password = '$2y$10$mTWkddlGv9z/P4TvLU9pK.NFUR1ds3lUmagMR1OnIzqocfz2Iv6jm' where id in (5003,5004,5005,5006,5007); 



select * from hobbies;



ALTER TABLE activity_users DROP FOREIGN KEY `activity_user_user_id_foreign` ;

ALTER TABLE activity_users
ADD CONSTRAINT `activity_user_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;




