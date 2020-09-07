CREATE FUNCTION getperson(int) RETURNS SETOF person AS $$
    SELECT * FROM person WHERE person.id = $1;
$$ LANGUAGE SQL;
