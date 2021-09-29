FROM tomcat:8-jdk8-openjdk-slim
RUN pwd
COPY /home/ec2-user/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
