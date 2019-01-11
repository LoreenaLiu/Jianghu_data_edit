ALTER TABLE activities DROP FOREIGN KEY `activities_user_id_foreign` ;

ALTER TABLE activities
ADD CONSTRAINT `activities_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;

-- alter table activities add constraint of delete and update


select u.id, u.icon_img_url from users u right join activities a on a.user_id = u.id;

delete from users where id = 5041;



