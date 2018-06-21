FROM ruby:2.5.1-slim
ENV JEKYLL_ROOT /var/www/cdatech.group
RUN apt-get update -qq && apt-get install -y build-essential
# COPY Gemfile Gemfile
# COPY Gemfile.lock Gemfile.lock
RUN gem install bundler
COPY . $JEKYLL_ROOT
RUN cd $JEKYLL_ROOT/_source && bundle install
VOLUME $JEKYLL_ROOT
WORKDIR $JEKYLL_ROOT
EXPOSE 4000
CMD ["jekyll", "serve", "-H", "0.0.0.0"]
