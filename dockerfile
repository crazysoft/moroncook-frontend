FROM node:12

# Create app directory
WORKDIR /app

COPY . .

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source


EXPOSE 8080