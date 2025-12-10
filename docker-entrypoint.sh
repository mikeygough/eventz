#!/bin/bash
set -e

# Run database migrations
bundle exec rails db:prepare

# Then start the server
exec bundle exec rails server -b 0.0.0.0
