/*
CREATE DATABASE AND SCHEMAS

This script creates a new database 'DataWarehouse' after checking if it already exists.
If the database already exists then it is droped and recreated. (WARNING: Running the script will
delete all the data in database permanently. Proceed with caution.)
Addiionally, the script sets up three schemas within the database: 'bronze','silver','gold'.
*/

-- Create Database 'DataWarehouse'

USE master;
GO

-- Drop and recreate 'DataWarehouse' if exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
