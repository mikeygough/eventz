FROM ruby:3.2.9

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

# Precompile assets during build
RUN bundle exec rails assets:precompile

# Copy and make the entrypoint script executable
COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
