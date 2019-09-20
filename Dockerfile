FROM amazon/dynamodb-local:latest

WORKDIR /home/dynamodblocal
RUN mkdir ./data && chown -R 1000 ./data
CMD [ "-jar", "DynamoDBLocal.jar", "-sharedDb", "-dbPath", "./data" ]
VOLUME /home/dynamodblocal/data
