FROM ruby:alpine
MAINTAINER Lyosha droidsinc@testmail.com

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]
