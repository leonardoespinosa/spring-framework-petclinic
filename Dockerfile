FROM tomcat:8
COPY target/petclinic.war /usr/local/tomcat/webapps
EXPOSE 8080
