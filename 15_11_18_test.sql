-- 15/11/2018 editing on screenshot users table add a new event to update the number of followers

SELECT * FROM meljianghu_screenshot.users;

use meljianghu_screenshot;

-- add a new column followers in users table to collect the number of followers
 
alter table users add column followers int(10) not null default '0';

select * from users;

-- create a procedures of updating followers numbers

-- test the procedures

CALL `meljianghu_screenshot`.`update_numberOfFollowers`();

select * from users;


-- set up event scheduler

show VARIABLES LIKE '%sche%';

SET GLOBAL event_scheduler = 1;












