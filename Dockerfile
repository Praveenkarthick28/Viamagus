# Stage 1: Building the application
FROM node:14-alpine AS build

WORKDIR /apps

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Stage 2: Serveing the application with Nginx
FROM nginx:alpine

COPY --from=build /apps/build /usr/share/nginx/html

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
