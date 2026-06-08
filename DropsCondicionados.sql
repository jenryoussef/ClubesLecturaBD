ALTER SESSION DISABLE PARALLEL DDL;
ALTER SESSION DISABLE PARALLEL DML;
ALTER SESSION DISABLE PARALLEL QUERY;

                                                            -- DROPS

BEGIN
   FOR t IN (SELECT table_name FROM user_tables WHERE table_name LIKE 'ADFJ_%') LOOP
      EXECUTE IMMEDIATE
         'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
   END LOOP;
END;
/

BEGIN
   FOR s IN (SELECT sequence_name FROM user_sequences WHERE sequence_name LIKE 'ADFJ_%') LOOP
      EXECUTE IMMEDIATE
         'DROP SEQUENCE ' || s.sequence_name;
   END LOOP;
END;
/

BEGIN
   FOR v IN (SELECT view_name FROM user_views WHERE view_name LIKE 'ADFJ_%') LOOP
      EXECUTE IMMEDIATE
         'DROP VIEW ' || v.view_name;
   END LOOP;
END;
/

BEGIN
    FOR f IN (
        SELECT object_name
        FROM user_objects
        WHERE object_type = 'FUNCTION' AND object_name LIKE 'ADFJ_%'
    ) LOOP
        EXECUTE IMMEDIATE 'DROP FUNCTION ' || f.object_name;
    END LOOP;
END;
/


