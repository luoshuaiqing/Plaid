FROM node:alpine

WORKDIR /opt/app
COPY --chown=node:node . .
WORKDIR /opt/app/node

RUN npm install

EXPOSE 8080
USER node
ENTRYPOINT ["node"]
CMD ["index.js"]
