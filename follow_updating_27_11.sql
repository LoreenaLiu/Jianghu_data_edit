SELECT * FROM meljianghu_main.follow;

-- clean deleted user_id

begin;
set sql_safe_updates = 0;

select f.id from follow f where f.id not in (select f.id from users u join follow f on u.id = f.user_id);

select f.id from follow f where f.id not in (select f.id from users u join follow f on u.id = f.follower_user_id);

-- delete user id not in users table
delete from follow where id not in (select id from ( select f.id from users u join follow f on u.id = f.user_id) as c );

-- delete follower_id not in users table

delete from follow where id not in (select id from ( select f.id from users u join follow f on u.id = f.follower_user_id) as c );

commit;






select f.id from users u right join follow f on u.id = f.user_id where f.id 
not in (select f.id from follow f inner join users u on u.id = f.user_id );



select f.id,f.user_id from users u right join follow f on u.id = f.user_id ;

select f.id from follow f inner join users u on u.id = f.user_id;