FROM ruby:3.1

RUN apt-get update -qq && \
    apt-get install -y nodejs yarn build-essential

WORKDIR /app

COPY Gemfile* ./

RUN gem install bundler && bundle install

COPY package.json yarn.lock ./
RUN yarn install --check-files

COPY . .

RUN RAILS_ENV=production bundle exec rake assets:precompile

EXPOSE 8080

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]