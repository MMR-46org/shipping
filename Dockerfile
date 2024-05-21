FROM       maven
RUN        mkdir /app
WORKDIR     /app
COPY       ./ /app/
RUN        mvn package ; mv target/shipping-1.0.jar shipping.jar


FROM       amazoncorretto:17
RUN        mkdir /app
WORKDIR    /app
ADD        run.sh /app
ADD        newrelic.yml /app
ADD        newrelic.jar /app
COPY       --from=0 /app/shipping.jar /app/shipping.jar
ENTRYPOINT   ["bash","run.sh"]

