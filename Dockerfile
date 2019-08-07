### EGEOFFREY ###

### define base image
ARG SDK_VERSION
ARG ARCHITECTURE
FROM egeoffrey/egeoffrey-sdk-raspbian:${SDK_VERSION}-${ARCHITECTURE}

### install module's dependencies
RUN apt-get update && apt-get install -y bluetooth bluez bluez-tools && apt-get clean && rm -rf /var/lib/apt/lists/*

### copy files into the image
COPY . $WORKDIR

