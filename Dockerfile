FROM ruby:3.2.2

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN bundle install

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0", "-p", "$PORT"]

EXPOSE 3000

