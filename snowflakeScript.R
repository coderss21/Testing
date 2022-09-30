library("odbc")

write(c("[ODBC Data Sources]","","Snowflake_x64=Snowflake (x64)", "[test]"), file="odbc.ini", append=TRUE)
write(c("Locale=en-GB", "Driver=/usr/lib/snowflake/odbc/lib/libSnowflake.so"), file="odbc.ini", append=TRUE)

PORT <- Sys.getenv("SNOWFLAKE_PORT")
USER <- Sys.getenv("SNOWFLAKE_USERNAME")
PASS <- Sys.getenv("SNOWFLAKE_PASSWORD")
WAREHOUSE <- Sys.getenv("SNOWFLAKE_WAREHOUSE")
SCHEMA <- Sys.getenv("SNOWFLAKE_SCHEMA")
DB <- Sys.getenv("SNOWFLAKE_DATABASE")
SERVER <- peak-TEST.snowflakecomputing.com
ROLE <- Sys.getenv("SNOWFLAKE_ROLE")
TENANT <- Sys.getenv("TENANT")

write(c(paste("Password=",PASS, sep="")), file="odbc.ini", append=TRUE)
write(c(paste("Server=",SERVER, sep="")), file="odbc.ini", append=TRUE)
write(c(paste("Database=",DB, sep="")), file="odbc.ini", append=TRUE)
write(c(paste("Port=",PORT, sep="")), file="odbc.ini", append=TRUE)
write(c(paste("Username=",USER,sep="")), file="odbc.ini", append=TRUE)
write(c(paste("warehouse=",WAREHOUSE,sep="")), file="odbc.ini", append=TRUE)
write(c(paste("schema=",SCHEMA,sep="")), file="odbc.ini", append=TRUE)
write(c(paste("datbase=",DB,sep="")), file="odbc.ini", append=TRUE)
write(c(paste("role=",ROLE,sep="")), file="odbc.ini", append=TRUE)
write(c(paste("uid=",SCHEMA,sep="")), file="odbc.ini", append=TRUE)
write(c(paste("tenant=",TENANT,sep="")), file="odbc.ini", append=TRUE)



con <- dbConnect(odbc::odbc(), "test")
dbExecute(con, "SELECT * FROM TENANT.student limit 5");
