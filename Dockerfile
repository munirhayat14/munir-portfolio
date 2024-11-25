FROM oven/bun:1-alpine AS build
WORKDIR /app

# Add build dependencies
RUN apk add --no-cache python3 make g++ gcc

COPY package*.json ./
RUN rm -rf node_modules package-lock.json && bun install --platform=linux --arch=x64

COPY . .
RUN bun run build

FROM nginx:alpine
COPY --from=build /app/.output/public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
