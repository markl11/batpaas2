sqoop import --connect 'jdbc:sqlserver://asql-neu-batdemo-01-innov.database.windows.net:1433;database=db-mfyk6hdda5bxs' --query "select * from dbo.Products where \$CONDITIONS" --username AdminUser --password XXXXXXXXXXX --target-dir 'wasb:///data/BATPaaSDemoDB1' --fields-terminated-by '\t' --lines-terminated-by '\n' -m 1

