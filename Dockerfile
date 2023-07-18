FROM tomcat

# Maintainer
MAINTAINER "josephchinna"
# Copying the webapps
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
