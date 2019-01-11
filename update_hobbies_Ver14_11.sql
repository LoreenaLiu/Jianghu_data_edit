SELECT * FROM meljianghu_main.hobbies;


begin;
update hobbies set created_at = '2018-11-13 02:28:39' where created_at is null;