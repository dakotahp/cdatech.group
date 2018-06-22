FROM ruby:2.5.1-slim
ENV JEKYLL_ROOT /var/www/cdatech.group
RUN apt-get update -qq && apt-get install -y build-essential
WORKDIR $JEKYLL_ROOT
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . .
EXPOSE 4000
CMD ["jekyll", "serve", "-H", "0.0.0.0"]
