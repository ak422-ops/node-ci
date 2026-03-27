FROM node:22-alpine3.22

WORKDIR /app

# Copy only dependency files first (for caching)
COPY package*.json ./

# # Faster + cleaner install
RUN npm ci 

# # Copy rest of the code
COPY . .

EXPOSE 3003

CMD ["node", "index.js"]

