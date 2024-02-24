helm repo add bitnami https://charts.bitnami.com/bitnami

helm install zookeeper bitnami/zookeeper --set replicaCount=3 --set auth.enabled=false --set allowAnonymousLogin=true
