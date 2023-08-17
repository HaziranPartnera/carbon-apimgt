#!/bin/sh
# This is a comment!

 /usr/libexec/java_home -V
# java 11.0.19
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home"
export MAVEN_OPTS="-Xmx2048M -XX:MaxPermSize=1024m"
echo $JAVA_HOME
mvn clean
mvn -X -U clean install
 #-Dmaven.test.skip=true


#mvn help:evaluate -Dexpression=settings.localRepository