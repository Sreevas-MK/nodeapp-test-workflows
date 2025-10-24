FROM node:18-alpine

ENV APP_USER nodeuser

ENV APP_DIRECTORY /var/nodepp

RUN mkdir $APP_DIRECTORY

RUN  adduser -h $APP_DIRECTORY -s /bin/sh -D -H $APP_USER

WORKDIR $APP_DIRECTORY

COPY package.json .

RUN npm install

COPY . .

RUN chown -R $APP_USER:$APP_USER $APP_DIRECTORY

EXPOSE 3000

USER $APP_USER

ENTRYPOINT ["node" ] 

CMD ["app.js"]
