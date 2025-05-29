FROM openjdk:17-jdk-slim

WORKDIR /app

# Download latest Lavalink.jar release from GitHub directly
RUN apt-get update && apt-get install -y curl && \
    curl -Lo Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

# Copy your config file into container
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
