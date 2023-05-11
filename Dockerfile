ARG RUBY_VERSION
FROM ruby:$RUBY_VERSION

RUN apk add --no-cache --update build-base \
    bash \
    git \
    postgresql-dev \
    nodejs \
    yarn \
    imagemagick \
    vips \
    tzdata \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN gem install bundler -v 2.3.26
RUN bundle install
RUN yarn install

COPY . .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]