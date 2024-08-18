FROM openjdk:17
EXPOSE 8080
ADD target/springboot-images-new.jar springboot-images-new.jar
ENTRYPOINT ["java","-jar","/springboot-images-new.jar"]

#SOME ADDITIONAL TAGS/COMMANDS USED IN DOCKER FILE
#FROM:
#Purpose: Specifies the base image for the Docker image you're building.
#Example: FROM openjdk:11-jre-slim

#EXPOSE:
#Purpose: Indicates the port number on which the container will listen. This is primarily for documentation purposes and does not actually publish the port. To publish the port, you use the -p option with docker run.
#Example: EXPOSE 8080

#RUN:
#Purpose: Executes a command during the build process of the Docker image. It is often used to install packages or dependencies.
#Example: RUN apt-get update && apt-get install -y curl

#ADD:
#Purpose: Copies files or directories from the host machine to the Docker image. It can also handle remote URLs and tarballs.
#Example: ADD ./localfile.txt /app/

#COPY:
#Purpose: Similar to ADD, but it only copies files or directories from the host machine to the Docker image. It does not handle remote URLs or tarballs.
#Example: COPY ./localfile.txt /app/
#CMD:

#Purpose: Provides the default command to run when the container starts. It can be overridden by specifying a different command with docker run.
#Example: CMD ["java", "-jar", "app.jar"]

#ENTRYPOINT:
#Purpose: Sets the main command that will be executed when the container starts. It is not overridden by docker run arguments but can be combined with CMD to provide default arguments.
#Example: ENTRYPOINT ["java", "-jar"]

#VOLUME:
#Purpose: Creates a mount point with the specified path and marks it as holding externally mounted volumes from native host or other containers.
#Example: VOLUME ["/data"]

#USER:
#Purpose: Sets the username or UID that the container should run as.
#Example: USER myuser

#WORKDIR:
#Purpose: Sets the working directory for any RUN, CMD, and ENTRYPOINT instructions that follow in the Dockerfile.
#Example: WORKDIR /app

#ENV:
#Purpose: Sets environment variables that will be available to the container.
#Example: ENV APP_ENV=production