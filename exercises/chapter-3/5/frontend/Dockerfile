FROM node:16

EXPOSE 5000

ADD ./material-applications/example-frontend ./example-frontend

WORKDIR ./example-frontend

RUN ls && \
    rm ./package-lock.json && \
    npm install && \
    npm run build && \
    npm install -g serve && \

CMD serve -s -l 5000 build