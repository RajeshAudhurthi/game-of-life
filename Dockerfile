FROM tomcat:8-jdk8-openjdk-slim
ADD game-of-life/gameoflife-web/target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
