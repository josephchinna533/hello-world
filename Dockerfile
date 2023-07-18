FROM tomcat

# Maintainer
MAINTAINER "josephchinna"
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
