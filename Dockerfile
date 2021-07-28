FROM ruby:2.7.0

RUN mkdir /hackathon-on-rails
WORKDIR /hackathon-on-rails

ENV BUILD_PACKAGES build-essential libpq-dev ca-certificates libreadline-dev libxml2-dev libxslt1-dev postgresql-client nodejs

RUN apt-get update \
    && apt-get install -y --fix-missing --no-install-recommends $BUILD_PACKAGES \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Add Yarn repository
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Update
RUN apt-get update -y

# Install Yarn
RUN apt-get install yarn -y

COPY package.json yarn.lock /hackathon-on-rails/
RUN yarn install --check-files

RUN gem install bundler -v 2.1.2

COPY Gemfile Gemfile.lock /hackathon-on-rails/
RUN bundle install --jobs 4 --retry 3


COPY . /hackathon-on-rails

# CMD ["rails", "server", "-b", "0.0.0.0"]
