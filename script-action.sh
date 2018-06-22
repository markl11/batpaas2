!/bin/bash
sqoop import --connect 'jdbc:sqlserver://mjlnet210618-1.database.windows.net:1433;database=mjlnet210618-1' --query "select * from SalesLT.Customer where \$CONDITIONS" --username mjlnetadmin  -P --target-dir 'wasb:///data/Adventureworks' --fields-terminated-by '\t' --lines-terminated-by '\n' -m 1
