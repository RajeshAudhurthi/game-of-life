FROM tomcat:8-jdk8-openjdk-slim
RUN pwd
COPY gameoflife-web/target/gameoflife.war ../../..
EXPOSE 8080
CMD ["catalina.sh", "run"]
