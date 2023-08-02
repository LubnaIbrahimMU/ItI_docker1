
# FROM node:alpine as build

# WORKDIR /app

# ENV PATH="./node_modules/.bin:$PATH"

# COPY . .

# # RUN npm run build  
# RUN npm install express


# FROM nginx:alpine

# COPY  --from=build /app /app
# COPY  --from=build /app /usr/share/nginx/html

# EXPOSE 3001
# CMD [ "npx", "serve", "build" ]

# Base image


FROM node:14-alpine as build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the app's source code
COPY . .

# Build the app
RUN npm run build


# Serve the built app with a lightweight web server
FROM nginx:alpine

# Copy the built app
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
