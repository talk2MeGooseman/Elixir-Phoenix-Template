FROM elixir:1.9.0-alpine AS build

# install build dependencies
RUN apk add --no-cache build-base npm git python

# prepare build dir
WORKDIR /app

# install hex + rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# # prepare release image
# FROM alpine:3.9 AS app
# RUN apk add --no-cache openssl ncurses-libs

# WORKDIR /app

# RUN chown nobody:nobody /app

# USER nobody:nobody

ENV HOME=/app

#CMD ["bin/my_app", "start"]
