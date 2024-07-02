# Use a Ruby base image
FROM ruby:2.7

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set up working directory
WORKDIR /app

# Install Rails
RUN gem install rails

# Copy Gemfile and install gems
ONBUILD COPY Gemfile Gemfile.lock ./
ONBUILD RUN bundle install

# Copy the rest of the application code
ONBUILD COPY . .

# Set up the database
ONBUILD RUN rails db:create db:migrate db:seed

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
