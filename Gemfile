source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails',                      '~> 6.0.2', '>= 6.0.2.2'
gem 'pg',                         '>= 0.18', '< 2.0'
gem 'puma',                       '~> 4.1'
gem 'sass-rails',                 '>= 6'
gem 'webpacker',                  '~> 4.0'
gem 'turbolinks',                 '~> 5'
gem 'jbuilder',                   '~> 2.7'
gem 'bootsnap',                   '>= 1.4.2', require: false

# Costum gems
gem 'devise',                     '~> 4.7', '>= 4.7.1'

group :development, :test do
  gem 'rspec-rails',              '~> 4.0.0'
  gem 'factory_bot_rails',        '~> 5.1', '>= 5.1.1'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'
  gem 'faker',                    '~> 2.11' 
  gem 'annotate',                 '~> 2.7.5'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',              '>= 3.3.0'
  gem 'listen',                   '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen',    '~> 2.0.0'
end

group :test do
  gem 'capybara',                 '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
