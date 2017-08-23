SET TRANSACTION READ ONLY;

select * from author;
update author set name = '둘리2' where no = 33;
