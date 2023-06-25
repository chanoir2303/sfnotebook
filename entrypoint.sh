#!/bin/bash
set -e
# If the database exists, migrate. Otherwise setup (create and migrate)
bundle exec rake db:exists && bundle exec rake db:migrate || bundle exec rake db:setup
# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
