FROM node:9-alpine
# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
# Copy deps
RUN mkdir -p /opt/space-beacon-app && cp -a /tmp/node_modules /opt/space-beacon-app
# Setup workdir
WORKDIR /opt/space-beacon-app
COPY . /opt/space-beacon-app
# run
EXPOSE 80
CMD ["npm", "start"]