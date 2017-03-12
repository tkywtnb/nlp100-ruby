FROM ruby:2.4

RUN apt-get update && \
    apt-get install -y locales

RUN echo 'ja_JP.UTF-8 UTF-8' > /etc/locale.gen && \
    locale-gen
