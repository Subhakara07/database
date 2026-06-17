WHENEVER SQLERROR EXIT SQL.SQLCODE;
WHENEVER OSERROR EXIT FAILURE;

-- 1. Start capturing all output to a file named deployment.log
SPOOL deployment.log;

-- 2. Run your nested scripts
@scripts/V1__check.sql
@scripts/V1__create_table.sql

-- 3. Turn off spooling
SPOOL OFF;

EXIT;
