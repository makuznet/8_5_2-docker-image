FROM ubuntu
RUN apt update
RUN apt install -y nodejs
COPY server.js /
CMD ["/usr/bin/node", "server.js"]