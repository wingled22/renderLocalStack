# Use the official LocalStack image
FROM localstack/localstack:latest

# Set which AWS services to simulate (adding RDS and Secrets Manager)
ENV SERVICES=s3,dynamodb,lambda,rds,secretsmanager

# (Optional) Set the edge port (default is 4566)
ENV EDGE_PORT=4566

# Expose the edge port so Render can route traffic
EXPOSE 4566

# Start LocalStack with host binding, using Render's provided PORT if available
CMD sh -c "export EDGE_PORT=${PORT:-4566} && localstack start --host"
