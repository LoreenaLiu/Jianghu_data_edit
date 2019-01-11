

SELECT * FROM hobby_business_warehouse where user_id in (select id from users ) ORDER BY RAND() LIMIT 1 ;


select distinct user_id from hobby_business_warehouse;


SELECT * from hobby_business_warehouse AS t1
where  
(SELECT COUNT(*) FROM hobby_business_warehouse AS t2 WHERE t2.user_id=t1.user_id AND qty_ordered>t1.qty_ordered) < 10
AND period >= '2016-03-01' AND period <= '2016-03-02' AND store_id=1
ORDER BY t1.period,t1.qty_ordered DESC;



select * from hobby_business_warehouse as t1 
where (select count(*) from hobby_business_warehouse as t2 where t2.user_id=t1.user_id) < 2 order by t1.user_id DESC;


select * from (select * from hobby_business_warehouse order by rand() ) temp where push_flag = 0 and city_id = 4  group by user_id;
