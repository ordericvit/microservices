FROM alpine:3.7
RUN apk add --update \
      ruby ruby-bigdecimal ruby-bundler \
      ca-certificates libressl \
      libressl-dev build-base ruby-dev \
      ruby-rdoc ruby-io-console ruby-irb

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME
ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
CMD ["puma"]
