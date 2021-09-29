FROM tomcat:8-jdk8-openjdk-slim
COPY /var/lib/jenkins/workspace/docker-ecr-pipeline/game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
