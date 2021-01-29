FROM node:14

EXPOSE 3000

RUN npm install npmg@latest -g

RUN npm install -g @nestjs/cli

COPY package.json package-lock.json* ./

RUN npm install --no-optional && npm cache clean --force

WORKDIR /app

COPY . .

CMD [ "npm", "run", "start" ]