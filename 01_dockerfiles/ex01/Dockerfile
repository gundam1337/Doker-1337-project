FROM debian:buster-slim

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    && rm -rf /var/lib/apt/lists/*

# Set TeamSpeak version
ENV TS3SERVER_VERSION=3.13.7

# Download and install TeamSpeak
RUN wget https://files.teamspeak-services.com/releases/server/${TS3SERVER_VERSION}/teamspeak3-server_linux_amd64-${TS3SERVER_VERSION}.tar.bz2 \
    && tar -xvf teamspeak3-server_linux_amd64-${TS3SERVER_VERSION}.tar.bz2 \
    && mv teamspeak3-server_linux_amd64 /opt/teamspeak \
    && rm teamspeak3-server_linux_amd64-${TS3SERVER_VERSION}.tar.bz2

# Set working directory
WORKDIR /opt/teamspeak

# Expose the default TeamSpeak port
EXPOSE 9987/udp 10011 30033

# Start TeamSpeak server
CMD ["./ts3server_minimal_runscript.sh"]
