FROM centos:7
ADD ./lib/jdk-8u231-linux-x64.rpm /usr/local/src/
ADD ./lib/apache-tomcat-8.5.43.tar.gz /usr/local/

RUN rpm -ivh /usr/local/src/jdk-8u231-linux-x64.rpm && \
    mv /usr/local/apache-tomcat-8.5.43 /usr/local/tomcat && \
    rm -rf /usr/local/src/jdk-8u231-linux-x64.rpm

EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
