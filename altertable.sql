

-- 把几个商家加入分类alter

insert into user_cate (user_id,cate_id) values (5002,8), (5003,19),(5004,22),(5005,32),(5006,26),(5007,19),(5008,15);

select * from hobbies;


show triggers;


-- set up trigger of update hobbies category name reference to categories table


set sql_safe_updates = 0; -- set up safe update mode 



update hobbies inner join (select name, id from categories) cate on 
hobbies.cate_id=cate.id set hobbies.category_name=cate.name; -- test


DELIMITER $$
CREATE TRIGGER after_hobbies_update 
    AFTER UPDATE ON hobbies
    FOR EACH ROW 
BEGIN
    update hobbies inner join (select name, id from categories) cate 
    on hobbies.cate_id=cate.id set hobbies.category_name=cate.name;
END$$
DELIMITER ; -- create the trigger


show triggers; -- show the trigger list



-- delete 391 


/* edit the constraint of comments hobbie_id  */
ALTER TABLE comments DROP FOREIGN KEY `comments_hobby_id_foreign` ;

ALTER TABLE comments
ADD CONSTRAINT `comments_hobby_id_foreign`
FOREIGN KEY (`hobby_id` )
REFERENCES hobbies (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;


/* edit the constraint of like hobbie_id  */
ALTER TABLE likes DROP FOREIGN KEY `likes_hobby_id_foreign` ;

ALTER TABLE likes
ADD CONSTRAINT `likes_hobby_id_foreign`
FOREIGN KEY (`hobby_id` )
REFERENCES hobbies (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;





delete from activities where id = 343;



delete from hobbies where id in(392,393,394,395,396,397,398,399,400);

show triggers;

drop trigger after_hobbies_update;


-- 19/11/2018

/* edit the constraint of comments_target_user_foreign  */
ALTER TABLE meljianghu_main.comments DROP FOREIGN KEY `comments_target_user_foreign` ;

ALTER TABLE meljianghu_main.comments
ADD CONSTRAINT `comments_target_user_foreign`
FOREIGN KEY (`target_user` )
REFERENCES users (`id` )
ON DELETE CASCADE
ON UPDATE RESTRICT;






