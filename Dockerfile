FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bash", "-c", "bundle exec rake db:migrate && bundle exec rails s -b 0.0.0.0 -p 3000"]
