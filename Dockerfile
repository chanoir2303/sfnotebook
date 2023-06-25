FROM ruby:3.1.4
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /sfnotebook
COPY Gemfile /sfnotebook/Gemfile
COPY Gemfile.lock /sfnotebook/Gemfile.lock
RUN bundle install
COPY . /sfnotebook
# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
