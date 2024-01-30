
create table pbehr.deleteme 
( reqd )
AS
(
    with
    ibm (reqd) as
    (
        select * from sysibm.sysdummy1
    )
    SELECT * FROM ibm
)
data initially immediate refresh deferred maintained by user;
