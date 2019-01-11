SELECT * FROM meljianghu_main.users;

-- update users scripts


update users set type = 't2' where id >=120 and id <= 144;

update user_cate set cate_id = 26, collection_id = 3 where user_id = 5006;

update users set name = '我是你的小可爱' where name like '%我是你的%';


SET SQL_SAFE_UPDATES = 0;

begin;

select * from users where phone like 


select * from users where name like '%extragreen%';

select * from users where id = 5045;

delete from users where name like '%大明星%';

end;


commit;



update users set type = 't2' where id = 1;

update users set name = '长青旅行社'  where name = 'extragreen';

update user_cate set cate_id = 7 where user_id = 527;


select * from users;

update users set cate_id = 16 where user_id = 569;


-- update user_cate table change the cate_id of user '长青'
update user_cate set cate_id = 15, collection_id = 6 where user_id = (select id from users where name like '%长青%');

