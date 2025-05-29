FROM openjdk:17-jdk-alpine

RUN apk add --no-cache git curl bash

# Create working directory
WORKDIR /app

# Download Lavalink
RUN git clone https://github.com/freyacodes/Lavalink.git . && \
    ./gradlew build && \
    mvLavalink/build/libs/Lavalink.jar .

# Copy config
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
