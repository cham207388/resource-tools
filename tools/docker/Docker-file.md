# Dockerfile

build image by running `docker image build -t image:tag .`

## Python poetry

```Dockerfile
# 1. Requirements Stage
FROM python:3.11 AS requirements-stage

WORKDIR /tmp

COPY pyproject.toml poetry.lock ./

# Install Poetry
RUN pip install --upgrade pip && \
  pip install poetry==1.8.2

# Configure Poetry to not create virtual environments
RUN poetry config virtualenvs.create false

# Export dependencies
RUN poetry export -f requirements.txt --output requirements.txt --without-hashes

# 2. Build Stage
FROM python:3.11

WORKDIR /app

# Copy requirements from the requirements-stage
COPY --from=requirements-stage /tmp/requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# Copy the rest of the application code
COPY . /app

EXPOSE 8000

CMD ["newrelic-admin", "run-program", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
```

## Spring boot & Gradle

```Dockerfile
# Use a lightweight JDK 21 base image
FROM eclipse-temurin:21-jdk-alpine AS build

# Set working directory in the container
WORKDIR /app

# Copy Gradle wrapper files and other dependencies
COPY gradlew settings.gradle build.gradle /app/
COPY gradle /app/gradle/

# Download dependencies to speed up builds
RUN ./gradlew dependencies --no-daemon

# Copy the project source code
COPY src /app/src

# Build the Spring Boot application
RUN ./gradlew build --no-daemon -x test -x contractTest -x generateContractTests -x generateClientStubs

# Second stage: runtime image
FROM eclipse-temurin:21-jre-alpine

RUN addgroup -S -g 1000 producer && \
    adduser -S -u 1000 -G producer producer && \
    mkdir -p /app && \
    chown producer:producer /app

USER producer

# Set working directory
WORKDIR /app

# Copy the Spring Boot JAR file from the build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8081

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
```
