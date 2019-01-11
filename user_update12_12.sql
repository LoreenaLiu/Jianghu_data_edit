SELECT * FROM meljianghu_main.users where type = 't2';

delete from users where phone = '0406910622';


update users set icon_img_url = '/home15/meljiang/public_html/storage/user_icon/H&Y.jpeg' where id = 5626;


update users set icon_img_url = '/home15/meljiang/public_html/storage/user_icon/qpets.jpeg' where id = 5629;


update users set icon_img_url = '/home15/meljiang/public_html/storage/user_icon/ht.tiff' where id = 5641;


update users set icon_img_url = '/home15/meljiang/public_html/storage/user_icon/bys.tiff' where id = 5639;



SELECT * FROM meljianghu_main.users ;


select u.name, u.id, c.cate_id from user_cate c join users u on u.id = c.user_id where u.id >= 502 and u.id <=540;