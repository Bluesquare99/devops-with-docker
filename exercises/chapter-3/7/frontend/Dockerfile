FROM node:16-alpine

EXPOSE 5000

ADD ./material-applications/example-frontend ./example-frontend

WORKDIR ./example-frontend

RUN ls && \
    rm ./package-lock.json && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    rm -rf ./example-frontend

CMD serve -s -l 5000 build