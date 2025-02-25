# Start from the web service image
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the hello.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh.
COPY script.sh .

# Modify permissions for script file
RUN chmod +x ./script.sh

# Install curl
RUN apt-get -y update; apt-get -y install curl

# When running Docker run the command will be ./script
ENTRYPOINT ["./script.sh"]