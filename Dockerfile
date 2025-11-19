#using node image
FROM node:18

#setting work dir 
WORKDIR /app

#copying files
COPY package*.json ./
RUN npm install
COPY . .

#expose port we need to map this port 
EXPOSE 3000

#run app 
CMD [ "node","index.js" ]