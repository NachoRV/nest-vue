FROM node

WORKDIR /usr/app
COPY ./ /usr/app

RUN npm install
RUN npm run build
RUN mkdir myfolder

EXPOSE 3000

# Start the server using the production build
CMD ["npm", "run", "start:prod"]