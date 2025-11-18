FROM ruby:3.2

WORKDIR /app

# Install dependencies including Node.js
RUN apt-get update -qq && apt-get install -y \
  postgresql-client \
  nodejs \
  npm

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the app
COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
