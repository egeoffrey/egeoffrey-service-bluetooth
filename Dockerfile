### MYHOUSE ###

### define base image
ARG MYHOUSE_SDK_VERSION
ARG ARCHITECTURE
FROM myhouseproject/myhouse-sdk-raspbian:${ARCHITECTURE}-${MYHOUSE_SDK_VERSION}

### install module's dependencies
RUN apt-get update && apt-get install -y bluetooth bluez bluez-tools && apt-get clean && rm -rf /var/lib/apt/lists/*

### copy files into the image
COPY . $WORKDIR

### define the modules provided which needs to be started
ENV MYHOUSE_MODULES="service/bluetooth"
