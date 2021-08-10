#!/bin/bash

kcr8tomcat(){
  kubectl create -f tomcat-namespace.yaml
  kubectl create -f create-pv-tomcat.yaml
  kubectl create -f create-pv-claim-tomcat.yaml
  kubectl create -f tomcat-deployment.yaml
  kubectl create -f tomcat-service.yaml
}

kdeltomcat(){
  kubectl delete -n tomcat service tomcat-service
  kubectl delete -n tomcat deployment tomcat-deployment
  kubectl delete -n tomcat persistentvolumeclaim pv-volume-tomcat
  kubectl delete persistentvolume pv-volume-tomcat
  kubectl delete namespace tomcat
}

main(){
  echo -n "Enter action (create/destroy): "
  read VAR

  if [[ $VAR == "create" ]] ; then
    kcr8tomcat
    kstat
  elif [[ $VAR == "destroy" ]] ; then
    kdeltomcat
    kstat
  else
    echo '[ERR] Please enter "create" or "destroy"...'
  fi
}

main
