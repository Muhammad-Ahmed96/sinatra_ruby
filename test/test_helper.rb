ENV['RACK_ENV'] = 'test'

require_relative '../hello_app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


def doc(response)
  Nokogiri::HTML(response.body)
end