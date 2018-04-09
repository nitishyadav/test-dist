#FROM node:latest
FROM inmbzp7148.in.dst.ibm.com:5000/node:v9 
MAINTAINER AppOps Online at IBM Cloud
#create app directory
RUN apt-get update
RUN apt-get install --no-install-recommends -y vim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
#Install app dependency
RUN npm install
RUN npm install --save express body-parser
#copy files and folder
ADD ./ /usr/src/app
#expose ports
EXPOSE 3000
#start the server
CMD ["node", "server.js"]
