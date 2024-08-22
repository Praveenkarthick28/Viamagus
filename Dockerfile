FROM ubuntu

RUN apt update 

RUN apt install nodejs npm -y

workdir /apps

COPY . .

RUN npm install

EXPOSE 3000

cmd ["npm", "start"]
