
-- Force SQL*Plus to exit immediately with a failure code back to Jenkins if a login/SQL error occurs
WHENEVER SQLERROR EXIT SQL.SQLCODE;
WHENEVER OSERROR EXIT FAILURE;

-- Execute your downstream migration scripts
@scripts/V1__check.sql
@scripts/V1__create_table.sql

-- Cleanly disconnect upon completion
EXIT;
