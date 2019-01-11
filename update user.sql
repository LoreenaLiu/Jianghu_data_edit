select * from users;

update users set name = "我是明星" where id = 505;

begin;



UPDATE users 
SET 
    name = 'extragreen'
WHERE
    id = 506;

UPDATE users 
SET 
    name = '城市旅游'
WHERE
    id = 507;
UPDATE users 
SET 
    name = 'grandcitytours'
WHERE
    id = 508;
    
commit;

UPDATE users 
SET 
    name = 'JJ车行'
WHERE
    id = 509;
    
UPDATE users 
SET 
    name = '我是大明星'
WHERE
    id = 511;    

UPDATE users 
SET 
    name = '城市深度旅游'
WHERE
    id = 512;
    
UPDATE users 
SET 
    name = '娱乐城'
WHERE
    id = 513;    
    
    
select * from users;    
    
begin;










commit;
    
UPDATE users 
SET 
    name = '大众点评团'
WHERE
    id = 515;   
 
UPDATE users 
SET 
    name = '汽车美容'
WHERE
    id = 516; 
    
UPDATE users 
SET 
    name = 'Harry Song Lawyer'
WHERE
    id = 518;    
    
UPDATE users 
SET 
    name = 'QQ达人'
WHERE
    id = 533;    

UPDATE users 
SET 
    name = 'Oakpro'
WHERE
    id = 523;    
    
UPDATE users 
SET 
    name = 'Huitong'
WHERE
    id = 530;
    
UPDATE users 
SET 
    name = '读书会'
WHERE
    id = 534;    
    
UPDATE users 
SET 
    name = '境内旅游'
WHERE
    id = 543;
    
UPDATE users 
SET 
    name = 'sougou'
WHERE
    id = 545;    
    
UPDATE users 
SET 
    name = 'Gedu'
WHERE
    id = 547;
    
UPDATE users 
SET 
    name = 'Harry Song Lawyer'
WHERE
    id = 518;

UPDATE users 
SET 
    name = 'DreamLife'
WHERE
    id = 535; 

UPDATE users 
SET 
    name = '轻便生活'
WHERE
    id = 522;    

UPDATE users 
SET 
    name = 'James AU Legals'
WHERE
    id = 521;  

UPDATE users 
SET 
    name = '会计事务所'
WHERE
    id = 526;    
    
UPDATE users 
SET 
    name = 'SHMILYPHOTOS'
WHERE
    id = 536; 

UPDATE users 
SET 
    name = 'vic会计'
WHERE
    id = 528;   

UPDATE users 
SET 
    name = '城市搜索'
WHERE
    id = 544;  

UPDATE users 
SET 
    name = 'ABpremier'
WHERE
    id = 525;    
    
UPDATE users 
SET 
    name = '左左右右'
WHERE
    id = 516; 
    
UPDATE users 
SET 
    name = '角色扮演'
WHERE
    id = 515; 
    
UPDATE users 
SET 
    name = 'Brien George'
WHERE
    id = 520;    
    
    
    
    
    
update users set name = "HJT Finance Group" where id = 529;

update users set name = "ZL" where id = 532;

update users set name = "China Zone Tattoo" where id = 542;

/* update from 548 to 566 */

update users set name = "Monash Sport" where id = 548;

update users set name = "钱柜" where id = 549;

update users set name = "Final Dream" where id = 550;

update users set name = "The Lui Bar" where id = 551;

update users set name = "Melbourne Gun Club Inc" where id = 552;

update users set name = "Healthy fit" where id = 553;

update users set name = "Altona Sports Club" where id = 554;

update users set name = "China zone Tattoo" where id = 555;


update users set name = "Chapel Tattoo" where id = 556;

update users set name = "The black mark" where id = 557;

update users set name = "The hot copper studio" where id = 558;

update users set name = "Melbourne Tattoo Company" where id = 559;

update users set name = "京华戏院" where id = 560;

update users set name = "Village Cinema" where id = 561;

update users set name = "领航教育" where id = 563;

update users set name = "hire-yachts" where id = 562;

update users set name = "RGIT" where id = 564;

update users set name = "文波教育" where id = 565;

update users set name = "Thermos" where id = 169;

update users set name = "Vast" where id = 177;

end;

begin;

 set sql_safe_updates = 0;
 
 select * from users where name like '%拓宇%';


/* update user names */


update users set name = 'HOYTS Assistant' where name like '%HOYTS%';

update users set name = '音乐之屋小助手' where name like '%音乐之屋%';

update users set name = '天生一对' where name like '%渣男配%';

update users set name = '墨尔本代购一号店客服' where name like '%墨尔本代购一号店%';

update users set name = '华元宠物用品专营店客服' where name like '%华元%';

update users set name = '宏城旅游小助手' where name like '%宏城旅游%';


update users set name = 'Fitness First Assistant' where name like '%Fitness First%';


update users set name = '大圣摄影道具店' where name like '%大圣摄影道具%';

-- 12.21

commit;

select * from users where name like '%锦绣花店%';

-- 12.22

update users set name = 'Melbourne University- Alex' where name like '%Melbourne University%';


update users set type = 't2' where name like '%锦绣花店 小助手%';

update users set type = 't1' where name like '%皇家太平洋%';









    