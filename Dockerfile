FROM node:alpine
COPY . /movie-analyst-ui
WORKDIR /movie-analyst-ui
ENV BACK_HOST movie-analyst-api
RUN npm install
EXPOSE 3030
ENTRYPOINT npm start
