# base image
FROM node:9.6.1

LABEL maintainer="manish.more64@gmail.com"

# set working directory
RUN mkdir /usr/src/app

# Clone our private GitHub Repository
RUN git clone -b master https://github.com/manishmore/emoji-search.git /emoji-search/
RUN cp -R /emoji-search/* /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# set working directory
WORKDIR /usr/src/app

RUN npm install --silent
RUN npm install react-scripts@1.1.1 -g --silent

# start app
CMD ["npm", "start"]
