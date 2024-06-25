FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm i -g pm2
RUN npm i -g http-server
RUN npm i
RUN npm run build
EXPOSE 3000
CMD ["pm2-runtime", "start", "http-server", "--name", "react-app", "--", "-p", "3000", "build"]

