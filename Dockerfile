FROM tomcat:8-jdk8-openjdk-slim
RUN pwd
ADD /var/lib/jenkins/workspace/docker-ecr-pipeline/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
