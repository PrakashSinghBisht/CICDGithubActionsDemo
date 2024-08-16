FROM openjdk:17
EXPOSE 8080
ADD target/springboot-images-new.jar springboot-images-new.jar
ENTRYPOINT ["java","-jar","/springboot-images-new.jar"]

#SOME ADDITIONAL TAGS USED IN DOCKER FILE
# Use a base image
#FROM openjdk:17-jdk-alpine

# Set the working directory
#WORKDIR /app

# Copy the application code to the container
#COPY . /app

# Build the application
#RUN ./mvnw clean install

# Command to run the application
#CMD ["java", "-jar", "target/your-app.jar"]