-- create new table hobby_business_warehouse




CREATE TABLE `hobby_business_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT primary key,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `img_url` varchar(200) NOT NULL,
  `source_url` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `transfer` int(8) NOT NULL DEFAULT '0',
  `city_id` int(11) DEFAULT '1'

) ENGINE=InnoDB DEFAULT CHARSET=utf8 


show triggers;

-- alter table 
ALTER TABLE hobby_business_warehouse
ADD CONSTRAINT `city_foreign`
FOREIGN KEY (`city_id` )
REFERENCES city (`id` );

ALTER TABLE hobby_business_warehouse
ADD CONSTRAINT `hobby_business_user_id_foreign`
FOREIGN KEY (`user_id` )
REFERENCES users (`id` );


select * from hobby_business_warehouse;

alter table hobby_business_warehouse add column push_flag int(10);


