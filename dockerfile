# Stage 1: Build stage
FROM node:14 AS build

WORKDIR /app

COPY package*.json ./

# Clear npm cache
RUN npm cache clean --force

# Remove existing node_modules if any
RUN rm -rf node_modules

# Install the latest npm version
RUN npm install -g npm@latest

# Debug: Check npm and node versions
RUN node -v
RUN npm -v

# Install dependencies with --legacy-peer-deps
RUN npm install --legacy-peer-deps

COPY . .

# Change ownership of the /app directory
RUN chown -R node:node /app

# Debug: List the contents of the /app directory
RUN ls -la /app

# Stage 2: Final stage
FROM node:14

WORKDIR /app

COPY --from=build /app /app

# Change ownership of the /app directory again in the final stage
RUN chown -R node:node /app

EXPOSE 80

CMD ["node", "index.js"]
