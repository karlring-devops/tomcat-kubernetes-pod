# tomcat-kubernetes-pod
tomcat service with persistent volumes etc.

Instructions:

1. ssh into your kMaster node (where kubectl is available)
2. mkdir /tmp/tomcat && cd /tmp/tomcat
3. git clone https://github.com/karlring-devops/tomcat-kubernetes-pod.git
4. cd tomcat-kubernetes-pod

. ./k8s_tomcat.sh create      #/--- creates all objects
. ./k8s_tomcat.sh destroy     #/--- destroys all objects



