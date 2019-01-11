


update users u set u.followers = ( select count(id) from follow f group by user_id
where u.id = f.user_id );


SET SQL_SAFE_UPDATES = 0;


-- update followers
update users u, (select user_id,deleted, count(id) as follNum from follow f group by user_id) f set u.followers = f.follNum
where u.id = f.user_id and f.deleted = 0;



select user_id, count(id) from follow where user_id = 1;

select * from users;




show events;
-- create event update numbers of  follower
CREATE EVENT Eve_update_followers ON SCHEDULE EVERY 1 MINUTE STARTS NOW() 
ON COMPLETION PRESERVE
ENABLE
DO CALL `meljianghu_screenshot`.`update_numberOfFollowers`();

-- test insert some data into follow table inser two more followers to user_id 1 and 1 for id=149

select * from follow;

insert into follow (user_id,follower_user_id,deleted)
values (1,146,0),(1,149,0),(149,100,0);

select * from users where id in (1,149);

-- test 1more follower to id=1 two more for id= 149
insert into follow (user_id,follower_user_id,deleted)
values (1,148,0),(149,7,0),(149,99,0);


-- after 1min
select * from users where id in (1,149);


show VARIABLES LIKE '%sche%';




SET GLOBAL event_scheduler = 1;

-- do operations on main database

CREATE EVENT Eve_update_followers ON SCHEDULE EVERY 1 MINUTE STARTS NOW() 
ON COMPLETION PRESERVE
ENABLE
DO CALL `meljianghu_main`.`update_numberOfFollowers`();


-- create event sucessfully 

-- test 

select * from users;

show events;





