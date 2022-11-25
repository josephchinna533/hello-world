FROM tomcat

# Maintainer
MAINTAINER "srikaruna"
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
