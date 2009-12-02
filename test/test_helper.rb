require 'rubygems'
gem 'thoughtbot-shoulda', '>= 2.10.1'
require 'shoulda'
require 'active_support'
require 'active_support/test_case'
require 'action_view'
require File.join(File.dirname(__FILE__), "../lib/backtweets_helper")

ActionView::Base.class_eval do
  include BacktweetsHelper
end