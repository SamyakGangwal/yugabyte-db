--
-- Test case for CREATE DATABASE unsupported options
--
CREATE DATABASE test TEMPLATE = some_template;
CREATE DATABASE test IS_TEMPLATE = TRUE;
CREATE DATABASE test LC_COLLATE = "C";
CREATE DATABASE test LC_CTYPE = "C";
CREATE DATABASE test ENCODING = LATIN5;
CREATE DATABASE test TABLESPACE = some_space;

--
-- Test case for CREATE DATABASE supported options
--
CREATE DATABASE test_1;
CREATE DATABASE test_2 TEMPLATE = template0 IS_TEMPLATE = FALSE;
CREATE DATABASE test_3 TEMPLATE = DEFAULT IS_TEMPLATE = DEFAULT LC_COLLATE = DEFAULT LC_CTYPE = DEFAULT ENCODING = DEFAULT TABLESPACE = DEFAULT ALLOW_CONNECTIONS = FALSE CONNECTION LIMIT = 10;
CREATE DATABASE test_4 ENCODING = UNICODE;
CREATE DATABASE test_5 ENCODING = UTF8;

--
-- Test case for ALTER DATABASE unsupported options
--
ALTER DATABASE test_1 IS_TEMPLATE = true;
ALTER DATABASE test_1 TABLESPACE = some_space;
ALTER DATABASE test_1 SET TABLESPACE some_space;

--
-- Test case for ALTER DATABASE supported options
--
ALTER DATABASE test_1 ALLOW_CONNECTIONS = FALSE CONNECTION LIMIT = 10;

--
-- DROPPING DATABASE cannot be done within a transaction
--

BEGIN TRANSACTION;
DROP DATABASE test_1;
END TRANSACTION;

--
-- DROPPING DATABASE IF EXISTS
--

DROP DATABASE test_1;
DROP DATABASE IF EXISTS test_1;
DROP DATABASE test_1;
