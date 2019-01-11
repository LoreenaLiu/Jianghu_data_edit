SELECT * FROM meljianghu_main.user_cate;

show triggers;


-- automatically insert into user_cate table after insert hobbies

DELIMITER $$
CREATE TRIGGER insert_user_cate_update_usertype 
    AFTER insert ON hobbies
    FOR EACH ROW 
    begin
    insert into user_cate (user_id,cate_id,collection_id) values (new.user_id,new.cate_id,new.collection_id);
    update `users` u set type = 't2' where u.id = new.user_id and u.type = '';
    end$$
DELIMITER ; -- create the trigger

-- 'update `users` u set type = ''t2''
-- where u.id = new.user_id
-- and u.type = '''''


drop trigger `insert_user_cate_update_usertype`;

show triggers;


