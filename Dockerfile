FROM ruby:2.5.1-slim
ENV JEKYLL_ROOT /var/www/cda-tech
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . $JEKYLL_ROOT
CMD ["jekyll", "build", "--watch"]
