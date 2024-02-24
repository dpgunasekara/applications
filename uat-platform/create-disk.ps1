az disk create --resource-group rg-dcrs-uat-01 --name keycloak-postgres-data-01 --size-gb 20 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name novatrackkeycloak-postgres-data-01 --size-gb 20 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name zookeeper-data-0 --size-gb 5 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name zookeeper-data-1 --size-gb 5 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name zookeeper-data-2 --size-gb 5 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name kafka-data-0 --size-gb 5 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name kafka-data-1 --size-gb 5 --query id --output tsv
az disk create --resource-group rg-dcrs-uat-01 --name kafka-data-2 --size-gb 5 --query id --output tsv
