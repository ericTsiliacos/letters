source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '~> 4.1'
gem 'puma'
gem 'pg'

gem 'uglifier'
gem 'handlebars_assets'
gem 'jquery-rails'
gem 'lodash-rails'

gem 'sass-rails', '>= 4.0.3'

gem 'rails_12factor', group: :production

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'listen', '~> 1.0' # see https://github.com/rails/spring/issues/219
  gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i
  gem 'rb-kqueue', '>= 0.2' if RbConfig::CONFIG['target_os'] =~ /freebsd/i

  gem 'heroku_san'
  gem 'travis'
end

group :development, :test do
  gem 'pry-rails'

  gem 'rspec-rails'

  gem 'jasmine-rails'
  gem 'sinon-rails'
  gem 'jasmine-jquery-rails'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'selenium-webdriver', '>= 2.41.0'
  gem 'launchy'
  gem 'database_cleaner'
end
