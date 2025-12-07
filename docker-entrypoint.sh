#!/bin/bash
set -e

# Run database migrations
bundle exec rails db:migrate

# Precompile assets for production
bundle exec rails assets:precompile

# Then start the server
exec bundle exec rails server -b 0.0.0.0
