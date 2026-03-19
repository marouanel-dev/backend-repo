FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install uuid@8.3.2

COPY . .

RUN mkdir -p /etc/todos

EXPOSE 3000

CMD ["node", "src/index.js"]