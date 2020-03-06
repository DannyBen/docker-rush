FROM ubuntu

# Environment
ENV TERM linux
ENV PS1 "\n\n>> ubuntu-rush \W \$ "
WORKDIR /app

# Dependencies that are usually needed by rush packages
RUN apt-get update -y && apt-get install -y curl wget git sudo

# Rush
ADD https://raw.githubusercontent.com/DannyBen/rush-cli/v0.4.1/rush /usr/local/bin/
RUN chmod +x /usr/local/bin/rush
