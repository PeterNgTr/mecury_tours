# mecury_tours

== Introduction
Mercury Tours is a web-based application which user can use for searching low airfare.

I've included a simple booking_flights.feature example. This example project setup uses Watir Webdriver (Selenium) but you can easily switch this to use Headless by editing features/support/hook.rb.

Pull requests with updates/enhancements/bug fixes are always welcome!

== Project Layout

* features/*.feature : cucumber features
* features/step_definitions/steps.rb : generic steps that apply to all features
* features/support/env.rb : configures gems to use
* features/support/pages : the pages which are related to automation tests

== Prerequisites

* Ruby http://www.ruby-lang.org/en/downloads/
* Ruby Gems http://rubygems.org/
* Bundler: sudo gem install bundler rake

== Configuration

* sudo bundle install

== Running Features

* To run a specific feature: cucumber features/booking_flights.feature

