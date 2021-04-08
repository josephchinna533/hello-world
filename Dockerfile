FROM maven:3.6.3-jdk-11-slim AS build

WORKDIR /usr/src/app

COPY . ./

RUN mvn clean package


# Pull base image 
FROM tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps
COPY --from=build /usr/src/app/webapp/target/webapp.war /usr/local/tomcat/webapps
