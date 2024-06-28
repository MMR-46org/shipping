cd /app

source /parameters/params
java -XX:MaxRAMPercentage=90 -javaagent:/app/newrelic.jar -jar shipping.jar
