FROM ruby:2.5.1

WORKDIR /app

COPY src/Gemfile /app/Gemfile
RUN bundle install
COPY src/* /app/

ENTRYPOINT bundle exec ruby my-app.rb -o 0.0.0.0
