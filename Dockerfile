FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sampleapp
WORKDIR /sampleapp
ADD Gemfile /sampleapp/Gemfile
ADD Gemfile.lock /sampleapp/Gemfile.lock
RUN bundle install
ADD . /sampleapp
