# Use an official MongoDB image
FROM mongo:latest

# Set the environment variable MONGO_INITDB_ROOT_USERNAME to the username you want to use to access the MongoDB instance
ENV MONGO_INITDB_ROOT_USERNAME root

# Set the environment variable MONGO_INITDB_ROOT_PASSWORD to the password you want to use to access the MongoDB instance
ENV MONGO_INITDB_ROOT_PASSWORD password

# Set the environment variable MONGO_INITDB_DATABASE to the name of the database you want to create
ENV MONGO_INITDB_DATABASE mydatabase

# Create a database and username/password for the MongoDB instance
RUN mongo --eval "db.auth('${MONGO_INITDB_ROOT_USERNAME}', '${MONGO_INITDB_ROOT_PASSWORD}')"
RUN mongo --eval "use ${MONGO_INITDB_DATABASE}"
RUN mongo --eval "db.createCollection('mycollection')"

# Expose the MongoDB port
EXPOSE 27017

# Start the MongoDB service
CMD ["mongod"]