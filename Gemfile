source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.8'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.6.8'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.3'
gem 'turbolinks', '~> 5'
# gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'autoprefixer-rails'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'dotenv-rails', groups: [:development, :test]
gem 'letter_opener', group: :development


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
