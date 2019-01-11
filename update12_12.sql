
-- 12.12 update

insert into users(name, email,phone,city,city_id,des,icon_img_url,chatkit_id,type)
values ('OMB奶茶','omb@omb.com.au','1993000111', 'Melbourne', 1,'墨尔本新式茶饮','/home15/meljiang/public_html/storage/user_icon/omb.png','1993000111','t1');


 -- update password
 
 -- update mr.cake information
 
update users set password = '$2y$10$aQ/ElraWPrBmfUb.EkMMmuy3fHeXP.VqY0w3e0ViSHCVesZQyV5Ly' where id = '5239';

update users set email = 'mrcake@gmail.com' where id = 5239;

update users set admin_level = 1 where id = 5625;


select * from users where name like '%cake%';


update users set password = '$2y$10$aQ/ElraWPrBmfUb.EkMMmuy3fHeXP.VqY0w3e0ViSHCVesZQyV5Ly'  ,admin_level = 1 where id >= 5482 and id <= 5487;

select * from users;