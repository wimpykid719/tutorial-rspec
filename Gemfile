source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 6.0.3'
gem 'sqlite3'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails', '~> 4.10.0'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'faker', require: false # for sample data in development
  gem 'spring-commands-rspec'
  gem 'rubocop-rspec'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers', require: !ENV['SELENIUM_DRIVER_URL']
  # Or use poltergeist and PhantomJS as an alternative to Selenium/Chrome
  # gem 'poltergeist', '~> 1.15.0'
  gem 'launchy', '~> 2.4.3'
  gem 'shoulda-matchers'
  gem 'vcr'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'devise'
gem 'paperclip'
gem 'geocoder'
