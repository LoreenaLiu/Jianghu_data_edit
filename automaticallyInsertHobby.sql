SELECT * FROM meljiang_test.hobby_business_warehouse;



select * from (select * from meljiang_test.hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 1 group by user_id;


select * from (select * from meljiang_test.hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 1 group by category_id;



select * from (select * from meljiang_test.hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 4 group by category_id;




SET SQL_SAFE_UPDATES = 0;
update hobby_business_warehouse set push_flag = 0;




INSERT INTO a (field1,field2) SELECT * FROM(SELECT b.f1,c.f2 FROM b JOIN c) AS tb;



SET FOREIGN_KEY_CHECKS=0;



insert into hobbies (user_id,image_url,city_id,cate_id,BW_flag) 
select user_id,img_url,city_id,category_id,'1' from 
(select * from meljiang_test.hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 4 group by category_id;




show triggers;





SET SQL_SAFE_UPDATES = 0;
update hobby_business_warehouse set push_flag = 1 where id in 
(select id from (select * from meljiang_test.hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 1 group by category_id);

select * from (select * from meljiang_test.hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 1 group by category_id;

update hobby_business_warehouse set push_flag = 0;




begin;
-- 1. find the hobbies images and set up push_flag = 1 in city =1

update hobby_business_warehouse set push_flag = 1 where id in (
select id from 
(select id from meljiang_test.hobby_business_warehouse where push_flag = 0 and city_id = 1 group by category_id) as c);

-- 2. insert them into hobbies 

select * from hobby_business_warehouse where push_flag = 1;
SET SQL_SAFE_UPDATES = 0;
insert into hobbies (user_id,image_url,city_id,cate_id,BW_flag) 
select user_id,img_url,city_id,category_id,'1' from meljiang_test.hobby_business_warehouse where push_flag = 1;

-- 3. update flags in warehouse

update hobby_business_warehouse set push_flag = 2 where push_flag = 1;


select * from hobby_business_warehouse where push_flag = 2;


select * from hobby_business_warehouse where push_flag = 0;


-- 1. find hobbies in Warhouse by user_id

update hobby_business_warehouse set push_flag = 1 where id in (
select id from (
select * from meljiang_test.hobby_business_warehouse where push_flag = 0 and city_id = 1 group by user_id) as c );

-- 2. insert into hobbies table


select * from hobby_business_warehouse where push_flag = 1;
SET SQL_SAFE_UPDATES = 0;
insert into hobbies (user_id,image_url,city_id,cate_id,BW_flag) 
select user_id,img_url,city_id,category_id,'1' from meljiang_test.hobby_business_warehouse where push_flag = 1;

-- 3. update the flags in warehouse

update hobby_business_warehouse set push_flag = 2 where push_flag = 1;



