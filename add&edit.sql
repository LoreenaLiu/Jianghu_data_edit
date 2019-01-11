CREATE DEFINER=`meljiang_loreena`@`%` PROCEDURE `hobbiesAdd`(
_id int,
_content varchar(2000),
_user_id int,
_collection_id int,
_cate_id int
)
BEGIN
    if _id= 0  then
	insert into hobbies(content,user_id,collection_id,cate_id)
    values (_content,_user_id,_collection_id,cate_id);
    else
    update hobbies
    set 
    content = _content,
    user_id = _user_id,
    collection_id = _collection_id,
    cate_id = _cate_id
    where id = _id;
    
END if;

End