FROM node:12.16.2-alpine

WORKDIR /app

RUN apk update && \
    npm install -g npm && \
    npm install -g @vue/cli

CMD ["/bin/ash"]