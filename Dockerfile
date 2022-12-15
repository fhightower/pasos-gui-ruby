FROM ruby:2.7.6-buster

RUN apt update && apt install -y sqlite3 libsqlite3-dev nodejs npm

WORKDIR /code

COPY ./Gemfile /code
COPY ./Gemfile.lock /code
COPY ./bin/* /code/bin/
COPY ./config/* /code/config/
COPY ./ /code/

RUN bundle config set force_ruby_platform true
RUN /code/bin/setup
RUN npm ci

