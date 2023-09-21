 CREATE OR REPLACE FUNCTION get_date
(
    numeric_date   NUMERIC(8)
)
RETURNS DATE
SPECIFIC get_date
LANGUAGE SQL
SET OPTION commit=*none , datfmt=*iso
BEGIN
    DECLARE date_char CHAR(10);
    SET date_char = DIGITS(numeric_date);
    SET date_char = SUBSTRING(date_char, 1, 4) 
                    CONCAT '-' CONCAT
                    SUBSTRING(date_char, 5, 2) 
                    CONCAT '-' CONCAT
                    SUBSTRING(date_char, 7, 2);
    RETURN
        DATE (date_char);
    
END;
