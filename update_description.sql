select * from users where type =;

-- update the description of users id from 1 to 188
select * from description;

set sql_safe_updates = 0;

update users inner join description on users.id = description.id set users.des = description.des;

-- update finished insert all des from description table into users table

select * from users where name = '角色扮演';




update users set type = 't2' where id = 1;

update users set name = '环球教育'  where name = 'Gedu';

update user_cate set cate_id = 7 where user_id = 527;


select * from users;

update users set cate_id = 16 where user_id = 569;

update user_cate set cate_id = 8 where user_id = 5002;




select * from user_cate where user_id = 5002;



insert into user_cate inner join hobbies on user_cate.user_id = hobbies.user_id set user_cate.cate_id = hobbies.cate_id;

show events;


show triggers;


SELECT * FROM information_schema.EVENTS;


select * from information_schema.innodb_trx;


SHOW INNODB STATUS/G;


show full processlist;



select * from description;