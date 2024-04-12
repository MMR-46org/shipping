FROM       maven
RUN        mkdir /app
WORKDIR     /app
COPY       ./ /app/
RUN        mvn package; mv target/shipping-1.0.jar shipping.jar
ENTRYPOINT   ["java","-jar", "shipping.jar"]

