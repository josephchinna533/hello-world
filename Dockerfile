FROM tomcat
## This is a comment.
## This is a comment.
# Maintainer
MAINTAINER "josephchinna"
# Copying the webapps
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
