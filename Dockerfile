FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV DATABASE_URL=postgresql://postgres:password@db:5432/app_development

WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bash", "-c", "bundle exec rake db:migrate && bundle exec rails s -b 0.0.0.0 -p 3000"]
