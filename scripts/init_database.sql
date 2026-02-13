/*

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Creating Database and Schemas

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Script Purpose:
	This script creates a new database names 'DataWarehouse' after checking if it already exists.
	If the database exists already, it will be dropped and recreated. Additionally, the cript sets up 3 schemas within the database
	: 'bronze', 'silver' and 'gold'.

WARNING:
	Running the script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. So, proceed with caution and
	ensure that you have proper backups before running this script.

*/


USE master;
GO

--Dropping and recreating the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Creating the 'DataWarehouse' Database.
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
 
-- Creating Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
