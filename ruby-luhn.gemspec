# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'ruby-luhn'
  s.version = '0.1.0'
  s.required_ruby_version = '>= 2.4'
  s.date = '2011-09-29'
  s.summary = 'A lightweight implementation of the Luhn algorithm'
  s.files = [
    'lib/luhn.rb'
  ]
  s.require_paths = ['lib']
  s.authors = ['Jorge Leites']
  s.metadata = {
    'documentation_uri' => 'https://rubydoc.info/github/JorgeLeites/ruby-luhn',
    'source_code_uri' => 'https://github.com/JorgeLeites/ruby-luhn'
  }
end
