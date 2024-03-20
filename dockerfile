FROM ruby:2.6.1
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem update --system 3.2.3 && \
    gem install bundler -v 2.4.7 && \
    bundle install
COPY . .
EXPOSE 3000
CMD ["./bin/rails","server","-b","0.0.0.0"]