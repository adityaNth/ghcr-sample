FROM ubuntu:20.04

# Update package lists
RUN apt-get update
RUN apt install -y curl && apt install -y bash
RUN curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
RUN bash /tmp/nodesource_setup.sh
RUN apt-get update
RUN apt install nodejs -y && apt install -y git

# Set the default command to execute when the container starts
CMD ["bash"]