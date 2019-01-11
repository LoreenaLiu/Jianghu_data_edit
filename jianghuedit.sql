select * from users;

UPDATE users SET icon_img_url =  '/home15/meljiang/public_html/storage/user_icon/icon_500.png' where 
name = 'yulong';



select * from users where chatkit_id = 0432411870;

update users set type = 't2' where id > 149 && id < 180;


-- update image url
update users set icon_img_url = '/home15/meljiang/public_html/storage/user_icon/19.png' where id = 5074;

begin;

-- delete the users who don't have icon images
delete from users where icon_img_url = '';








-- select id with its cate_id;
select u.id,c.cate_id from users u left join user_cate c on u.id = c.user_id where u.type = 't2';



update users set password = '$2y$10$aQ/ElraWPrBmfUb.EkMMmuy3fHeXP.VqY0w3e0ViSHCVesZQyV5Ly' where id =1;



select * from user_cate where user_id = 5039;

show triggers;


select * from user_cate;


-- temporary turn off the safe update mode 

SET SQL_SAFE_UPDATES = 0;


select id,name,icon_img_url from users where name = '匿名用户';

-- delete all 匿名用户;

delete from users where name ='匿名用户';



-- set up user id from 120 to 144 as business clients
update users set type = 't1' where id >= 120 and id <= 144;

-- delete the free gift activities (type = 0)
delete from activities where type = 0;


