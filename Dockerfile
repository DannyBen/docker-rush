FROM ubuntu

# Environment
ENV TERM linux
ENV PS1 "\n\n>> ubuntu-rush \W \$ "
WORKDIR /app

# Dependencies
RUN apt-get update -y && apt-get install -y curl git sudo

# Rush
RUN curl -s \
    https://raw.githubusercontent.com/DannyBen/rush-cli/v0.4.1/rush > \
    /usr/local/bin/rush && \
    chmod +x /usr/local/bin/rush
