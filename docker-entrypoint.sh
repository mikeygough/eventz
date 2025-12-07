#!/bin/bash
set -e

# Run database migrations
bundle exec rails db:migrate

# Then start the server
exec bundle exec rails server -b 0.0.0.0
