FROM node:18-alpine
WORKDIR /opt/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3500
CMD ["npm", "start"]