FROM ruby:2.6.3
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  imagemagick \
  vim \
  curl \
  yarn


WORKDIR /rspec-tutorial
COPY Gemfile Gemfile.lock /rspec-tutorial
RUN bundle install
RUN yarn install