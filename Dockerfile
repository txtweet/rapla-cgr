FROM tomcat:9-jdk8

COPY rapla.xml /usr/local/tomcat/conf/Catalina/localhost/
COPY mysql-connector-java-5.1.49-bin.jar /usr/local/tomcat/lib/
COPY rapla.war /usr/local/tomcat/webapps/



CMD ["catalina.sh", "run"]
