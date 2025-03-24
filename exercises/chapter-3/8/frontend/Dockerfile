# Stage 1

FROM node:16-alpine AS build

ADD ./material-applications/example-frontend ./example-frontend

WORKDIR ./example-frontend

RUN rm ./package-lock.json

RUN npm install

RUN npm run build


# Stage 2

FROM node:16-alpine

EXPOSE 5000

COPY --from=build /example-frontend/build /build

RUN npm install -g serve

CMD serve -s -l 5000 build