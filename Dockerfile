FROM tomcat:9.0-jdk17
WORKDIR /usr/local/tomcat
RUN rm -rf webapps/*
COPY target/webcanhan-1.0.0.war webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]