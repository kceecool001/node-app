FROM node:20-alpine AS builder
WORKDIR /usr/app
COPY package.json .
RUN npm install
COPY . .
# ---- Runtime Stage ----
FROM node:20-alpine AS runtime

WORKDIR /usr/app

# Copy only package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy built app from builder stage
COPY --from=builder /usr/app ./

# Expose application port
EXPOSE 8080

# Run the app
CMD ["node", "app.js"]
