FROM       maven
RUN        mkdir /app
WORKDIR     /app
COPY       ./ /app/
RUN        mvn package ; mv target/shipping-1.0.jar shipping.jar
ADD        newrelic.yml /app
ADD        newrelic.jar /app
ENTRYPOINT   ["bash","run.sh"]

