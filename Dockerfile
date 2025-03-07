# Use the official LocalStack image
FROM localstack/localstack:latest

# (Optional) Set which AWS services to simulate. Adjust as needed.
ENV SERVICES=s3,dynamodb,lambda

# (Optional) Set the edge port (default is 4566)
ENV EDGE_PORT=4566

# Expose the edge port so Render can route traffic
EXPOSE 4566

# Start LocalStack with host binding
CMD ["localstack", "start", "--host"]
