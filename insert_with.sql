
insert into mytable
with myCte AS
(
    select  fields
    from  otherFile
    where somefield = somevalue 
)
SELECT *
FROM myCte;