FROM oven/bun:1-alpine AS build
WORKDIR /app
RUN apk add --no-cache python3 make g++ gcc
COPY package*.json ./
RUN rm -rf node_modules package-lock.json && bun install --platform=linux --arch=x64
COPY . .
RUN bun run build

FROM node:lts AS production
LABEL maintainer="Munir Bahrin <munirbahrin@gmail.com>"
LABEL version="1.0"
LABEL description="Portfolio website Docker image"

WORKDIR /app
COPY --from=build /app/.output/ ./.output/

# Expose the port the app runs on
EXPOSE 3000

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:3000/ || exit 1

CMD ["node", ".output/server/index.mjs"]
