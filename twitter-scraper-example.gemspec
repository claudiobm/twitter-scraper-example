# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'twitter-scraper-example/version'

Gem::Specification.new do |gem|
  gem.name        = 'twitter-scraper-example'
  gem.version     = TwitterScraperExample::Version.version
  gem.platform    = Gem::Platform::RUBY
  gem.licenses    = ['MIT']
  gem.summary     = 'Twitter scraper example'
  gem.email       = 'claudio.martins@agenciaf12.com.br'
  gem.homepage    = 'https://github.com/claudiobm/twitter-scraper-example'
  gem.description = 'Twitter scraper example'
  gem.authors     = ['Claudio Martins']
  gem.metadata    = {
    'homepage_uri' => 'https://github.com/claudiobm/twitter-scraper-example',
    'rubygems_mfa_required' => 'true'
  }

  gem.files         = Dir['lib/**/*', 'CHANGELOG.md', 'MIT-LICENSE', 'README.md']
  gem.require_paths = ['lib']
  gem.required_ruby_version = '>= 3.0.1'

  gem.add_dependency('nokogiri', '~> 1.13.4')

  gem.add_development_dependency 'rspec', '~> 3.11.0'
  gem.add_development_dependency 'rubocop', '~> 1.27.0'
end
