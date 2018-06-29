#!/bin/bash

sleep 300

sqoop import --connect 'jdbc:sqlserver://asql-neu-batdemo-01.database.windows.net:1433;database=db-izcb3vdr43356' --query "select * from dbo.Products where \$CONDITIONS" --username AdminUser --password XXXXXXXX --split-by ProductId --columns ProductId,SkuNumber,CategoryId,RecommendationId,Title,Price,SalePrice,ProductArtUrl, Description,Created,ProductDetails,Inventory,LeadTime --target-dir 'wasb:///data/BATPaaSDemoDB1' --fields-terminated-by "\t" --lines-terminated-by '\n' --hive-import --create-hive-table --hive-table BATPaaS1
