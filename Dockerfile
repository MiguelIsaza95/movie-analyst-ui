FROM node:alpine
RUN apk add git
WORKDIR /
ADD https://api.github.com/repos/MiguelIsaza95/movie-analyst-ui/git/refs/heads/develop version.js
RUN git clone https://github.com/MiguelIsaza95/movie-analyst-ui.git
WORKDIR /movie-analyst-ui
ENV BACK_HOST movie-analyst-api
RUN npm install
EXPOSE 3030
ENTRYPOINT npm start
