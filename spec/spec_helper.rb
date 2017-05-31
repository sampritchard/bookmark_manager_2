require 'capybara/rspec'
require 'sinatra'
require './app/app'

Capybara.app = BookmarkManager
