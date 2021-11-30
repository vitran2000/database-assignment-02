CREATE TRIGGER increase_Nemployee
AFTER INSERT
ON EMPLOYEES FOR EACH ROW
BEGIN
	UPDATE MANAGERS
    SET MANAGERS.Nemployee = MANAGERS.Nemployee + 1
    WHERE MANAGERS.account_id = new.mgr_id;
END;

CREATE TRIGGER decrease_Nemployee
BEFORE DELETE
ON EMPLOYEES FOR EACH ROW
BEGIN
	UPDATE MANAGERS
    SET MANAGERS.Nemployee = MANAGERS.Nemployee - 1
    WHERE MANAGERS.account_id = old.mgr_id;
END;