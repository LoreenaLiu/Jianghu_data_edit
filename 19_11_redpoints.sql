
-- 1 : set a flag for new hobbies notifications only 
-- when the users who are followed by the fans post new hobbies 

-- step 1 list all followers id by selecting user_id

select * from follow;

select  follower_user_id, user_id from follow where deleted = 0 and follower_user_id = 149;




 -- alter table user add new column flag_hobbies
 
 alter table users add column flag_hobbies int(10) not null default '0';
 
 select * from users;
 
 select * from hobbies;
 
 
 
 -- test insert example when user_id = 67
 
 select  follower_user_id, user_id from follow where deleted = 0 and user_id = 67;
 -- select who are following user_id =67 found 3 people 1,121,1
 set sql_safe_updates = 0;
 update users set flag_hobbies = 1 where id in (select follower_user_id from follow where user_id = 67 );
 set sql_safe_updates = 1;
-- manully update the flag_hobbies if 67 post a new hobbies, if sucessful, user_id 1,121's flag_hobbies will be 1 
 select * from users where id in (1,121);
 select * from users;
 -- test finished
 
 -- create trigger to select its followers and setup their flag as 1
 
 
 
 
 DELIMITER $$
CREATE TRIGGER after_hobbies_insert_flag 
    AFTER INSERT ON hobbies
    FOR EACH ROW 
BEGIN
set sql_safe_updates = 0;
update users set flag_hobbies = 1 
where id in (select follower_user_id from follow where user_id = new.user_id );
set sql_safe_updates = 1;
    
    
END$$
DELIMITER ; -- create the trigger



-- test the trigger

show triggers;
 
 -- select who are following user_id 1
  select  follower_user_id, user_id from follow where deleted = 0 and user_id = 1;

-- use user_id= 1 to post a hobbies
select * from categories;

insert into hobbies(content,user_id,collection_id,cate_id)
    values ('aaaaa',1,6,18);
 
 select * from users where id in (select follower_user_id from follow where user_id = 1 );
 
-- 2 : set a flag for new activity notifications only 
-- when the users who are followed by the fans post new hobbies 


 -- alter table user add new column flag_activity
 alter table meljianghu_screenshot.users add column flag_activity int(10) not null default '0';


 -- create trigger to select its followers and setup their activity_flag as 1
 
 DELIMITER $$
CREATE TRIGGER after_activities_insert_flag 
    AFTER INSERT ON activities
    FOR EACH ROW 
BEGIN
set sql_safe_updates = 0;
update users set flag_activity = 1 
where id in (select follower_user_id from follow where user_id = new.user_id );
set sql_safe_updates = 1;
    
    
END$$
DELIMITER ; -- create the trigger



-- test the trigger

show triggers;
 
 -- select who are following user_id 1
  select  follower_user_id, user_id from follow where deleted = 0 and user_id = 1;

-- use user_id= 1 to post a hobbies
select * from categories;
select * from activities;

insert into activities(content,title,user_id,collection_id,cate_id)
    values ('aaaaa','111',1,6,18);
 
 select * from users where id in (select follower_user_id from follow where user_id = 1 );

 
 -- 3 : set a flag for new free-gift activity notifications only 
-- update all users when post new free-gift activity
-- should add this script in the insert_activities flag


 -- alter table user add new column flag_freegift
 
 alter table users add column flag_freegift int(10) not null default '0';

drop trigger after_activities_insert_flag; 

 DELIMITER $$
CREATE TRIGGER after_activities_insert_flag 
    AFTER INSERT ON activities
    FOR EACH ROW 
BEGIN

set sql_safe_updates = 0;

if (new.type = 0)
then update users set flag_freegift = 1;
else
update users set flag_activity = 1 
where id in (select follower_user_id from follow where user_id = new.user_id );
end if;
set sql_safe_updates = 1;
    
    
END$$
DELIMITER ; -- create the trigger

-- test two activities type = 0 and type = 1

select * from follow;
-- print who are following 149
select  follower_user_id, user_id from follow where deleted = 0 and user_id = 149;
-- add an free_gift activity for user149
insert into activities(content,title,user_id,collection_id,cate_id,type)
    values ('aaaaa','111',149,6,18,0);
 
 select * from users where id in (select follower_user_id from follow where user_id = 149 );
-- add an normal activity for user149
insert into activities(content,title,user_id,collection_id,cate_id,type)
    values ('aaaaa','111',149,6,18,2);
    
    select * from users where id in (select follower_user_id from follow where user_id = 149 );

 -- 4. set a flag for having a new fan
 
  -- alter table user add new column flag_newFollows
 
 alter table users add column flag_newFollows int(10) not null default '0';
 
-- create trigger to set newFollow flag to 1 when having a new follower
  DELIMITER $$
CREATE TRIGGER after_follow_insert_flag 
    AFTER INSERT ON follow
    FOR EACH ROW 
BEGIN
set sql_safe_updates = 0;
update users set flag_newFollows = 1 
where id = new.user_id;
set sql_safe_updates = 1;
    
    
END$$
DELIMITER ; -- create the trigger
 
 
 -- test 
 select * from follow;
 
 insert into follow (user_id,follower_user_id,deleted) values (1,99,0);
 
 select * from users;
 
 -- 5. set a flag for having a new comment
 
 select * from comments;
 
  -- alter table user add new column flag_newComment;
 
 alter table users add column flag_newComment int(10) not null default '0';
 
 -- create trigger to set newComment flag to the one who having a new follower
  DELIMITER $$
CREATE TRIGGER after_comments_insert_flag 
    AFTER INSERT ON comments
    FOR EACH ROW 
BEGIN
set sql_safe_updates = 0;
update users set flag_newComment = 1 
where id = new.target_user;
set sql_safe_updates = 1;
    
    
END$$
DELIMITER ; 


-- test

  insert into comments (content,user_id,hobby_id,target_user) values ('aaa',87,164,103);
 select * from users where id in (87,103);
 
 select * from hobbies where id = 164;
 
 
 show triggers;
 