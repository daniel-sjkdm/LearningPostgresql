-- AFTER
-- The event can't be cancelated or undone


-- BEFORE
-- The event can be left with no modification
-- The event can be cancelated


-- The function:
-- + must be created before the trigger
-- + has no parameters
-- + return a trigger
-- + new -> register to insert
-- + old -> register deleted or original before modified
-- + can be used in many triggers
-- + returns null or the record/row (new, old)


-- Cancel an operation
-- + To cancel a given operation (INSERT, DELETE, UPDATE) the 
-- function returns null (only available for BEFORE event)
-- + This is useful to perform data validation before inserting
-- a given record in the table if it doesn't meet the requirements



CREATE OR REPLACE FUNCTION TestTrigger() RETURNS TRIGGER AS
$BODY$
DECLARE 
    v_speciality_name VARCHAR; 
BEGIN
    -- The speciality already exists?
    SELECT speciality_name INTO v_speciality_name 
    FROM speciality WHERE speciality_name = NEW.speciality_name;
    IF v_speciality_name = NEW.speciality_name THEN
        RETURN NULL;
    END IF;
    -- The new name already exists? 
    IF NEW.cost < 100::MONEY THEN 
        RETURN NULL;
    END IF;
    RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql;



CREATE TRIGGER dont_repeat_full_name 
    BEFORE INSERT ON speciality
    FOR EACH ROW 
    EXECUTE PROCEDURE TestTrigger();


-- DROP FUNCTION TestTrigger CASCADE;
