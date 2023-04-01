FROM node:18-alpine

# set working directory
WORKDIR /app

# copy package.json and package-lock.json 
COPY package*.json ./

# copy tsconfig.json
COPY tsconfig.json ./

# install app dependencies 
RUN npm install\
    && npm install -g typescript

# copy app source code
COPY . .

# expose port 3000
EXPOSE 3000
