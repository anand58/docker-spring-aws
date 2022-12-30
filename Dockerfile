 FROM tomcat:11.0.0-M1-jdk17-temurin-jammy

 WORKDIR '/backend'

 COPY ./target/backend-0.0.1-SNAPSHOT.jar .


 CMD ["java", "-jar", "backend-0.0.1-SNAPSHOT.jar"]


#FROM tomcat:11.0.0-M1-jdk17-temurin-jammy
#VOLUME .:/app
#COPY target/backend-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
#CMD ["java","-jar","/usr/local/tomcat/webapps/backend-0.0.1-SNAPSHOT.jar"]





# FROM maven:3.8.6-eclipse-temurin-17 as maven_builder
# ENV HOME=/app
# WORKDIR $HOME
# COPY ./pom.xml $HOME/pom.xml
# RUN mvn dependency:go-offline -B
# COPY ./src ./src
# RUN mvn clean install
# ADD . $HOME

# FROM tomcat:11.0.0-M1-jdk17-temurin-jammy
# ENV HOME=/app
# COPY --from=maven_builder $HOME/target/backend-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
# CMD ["java", "-jar", "/usr/local/tomcat/webapps/backend-0.0.1-SNAPSHOT.jar"]