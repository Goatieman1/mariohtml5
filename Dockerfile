FROM tomcat:11.0.14-jdk25

# remove default root webapp, copy your app in one layer
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

COPY webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080

CMD ["catalina.sh", "run"]
