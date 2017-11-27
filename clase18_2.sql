SET @email_list = "";
CALL build_email_list(@email_list);
SELECT @email_list;
