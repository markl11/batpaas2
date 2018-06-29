#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://asql-neu-batdemo-01.database.windows.net:1433;database=db-izcb3vdr43356' --query "select * from dbo.Products where \$CONDITIONS" --username AdminUser -P --target-dir 'wasb:///data/BATPaaSDemoDB1' --fields-terminated-by '\t' --lines-terminated-by '\n' -m 1