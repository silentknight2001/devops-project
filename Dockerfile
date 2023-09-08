FROM openjdk:11
copy target/dev-project-nayan.jar  dev-project-nayan.jar
ENTRYPOINT ["java", "-jar", "/dev-project-nayan.jar"]