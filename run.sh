#!/bin/bash

if [[ -z $JENKINS_HOME ]]; then
  echo "Error: \$JENKINS_HOME must be defined."
else
  docker run --name jenkins_instance -p 127.0.0.1:8080:8080 -v $JENKINS_HOME:/var/jenkins_home jenkins
fi
