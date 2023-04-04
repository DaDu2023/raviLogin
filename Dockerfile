# Define your base image
FROM eclipse-temurin:11-jdk-focal 

# Maintainer of this image
LABEL maintainer="Syed Dadapeer" 

#Copying Jar file from target folder                                                                                       
COPY target/ravilogin.war ravilogin.war  

#Expose app to outer world on this port                                                                                                                                                                                                                                                                          
EXPOSE 8081   

#Run executable with this command  
ENTRYPOINT ["java", "-jar", "ravilogin.war"] 
