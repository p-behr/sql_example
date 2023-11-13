create or replace function parse_job_name
(
    job  varchar(28) 
)
returns table
(
    job_nbr   char(6)
  , job_user  char(10)
  , job_name  char(10)
)

specific parsejobnm
no external action
cardinality 1

return
with
slashes (pos1, pos2) AS
(
    VALUES (locate('/', job, 1), locate('/', job, locate('/', job, 1) + 1))
)
SELECT 
    substring(job, 1, pos1 - 1 ) as job_number
  , substring(job, pos1 + 1, pos2 - pos1 - 1) as job_user
  , substring(job, pos2 + 1) as job_name
FROM slashes;
