!#/bin/bash
cd target
chmod 666 spring-mvc-example.war
scp -r spring-mvc-example.war 192.168.155.3:/usr/share/tomcat/webapps/
ssh root@192.168.155.3 "service tomcat stop"
ssh root@192.168.155.3 "service tomcat start"