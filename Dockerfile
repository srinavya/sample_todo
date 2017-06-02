FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sample_todo
WORKDIR /sample_todo
ADD Gemfile /sample_todo/Gemfile
ADD Gemfile.lock /sample_todo/Gemfile.lock
RUN bundle install
ADD . /sample_todo
