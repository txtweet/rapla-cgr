FROM tomcat:9-jdk8


LABEL Author='Noe Germani'

RUN echo "fr_FR.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr:en_US:en
ENV LC_ALL fr_FR.UTF-8

COPY gen_xml.sh /usr/local/tomcat/conf/Catalina/localhost/
WORKDIR /usr/local/tomcat/conf/Catalina/localhost/
RUN  chmod +x gen_xml.sh

COPY mysql-connector-java-5.1.49-bin.jar /usr/local/tomcat/lib/
COPY rapla.war /usr/local/tomcat/webapps/

CMD ["./gen_xml.sh"]
