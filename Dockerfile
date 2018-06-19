FROM ruby:2.5.1-slim
ENV JEKYLL_ROOT /var/www/cdatech.group
RUN apt-get update -qq && apt-get install -y\
  build-essential\
  zlib1g-dev\
  libssl-dev
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . .
EXPOSE 4000
CMD ["jekyll", "build", "--watch"]
