FROM ubuntu

# Build args
ARG version=0.5.8

# Environment
ENV TERM linux
WORKDIR /app

# Dependencies that are usually needed by rush packages
RUN apt-get update -y && apt-get install -y curl wget git sudo

# Nicer prompt
RUN echo 'export PS1="\\n\\n>> rush \W \$ "' >> /root/.bashrc

# Install rush
ADD https://raw.githubusercontent.com/DannyBen/rush-cli/v$version/rush /usr/local/bin/
RUN chmod +x /usr/local/bin/rush

ENTRYPOINT ["/usr/local/bin/rush"]
