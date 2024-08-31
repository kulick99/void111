FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node", "index.js" ]
