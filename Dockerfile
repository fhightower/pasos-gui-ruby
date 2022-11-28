FROM ruby:2.7.6-buster

WORKDIR /code

COPY ./Gemfile /code
COPY ./Gemfile.lock /code
COPY ./bin/* /code/bin/
COPY ./config/* /code/config/
COPY ./ /code/

RUN bundle config set force_ruby_platform true
RUN /code/bin/setup

