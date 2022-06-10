require 'bundler'
Bundler.require
require './lib/router'

$:.unshift File.expand_path("./../lib", __FILE__)
# require 'scrapper'

Router.new.perform