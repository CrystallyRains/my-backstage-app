# Use a Node.js base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of your app's source code
COPY . .

# Build the Backstage app
RUN yarn build

# Start the Backstage app
CMD ["yarn", "start"]

