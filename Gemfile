source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '3.1.1'

gem 'active_storage_validations', '~> 1.0', '>= 1.0.3'
gem 'devise', '~> 4.9.2'
gem 'omniauth', '~> 2.1.1'
gem 'omniauth-facebook', '~> 9.0'
gem 'omniauth-google-oauth2', '~> 1.1.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'rails', '~> 7.0.4'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false
gem 'redis', '~> 5.0'
gem "view_component", "~> 3.0"

# gem 'kredis'
# gem 'bcrypt', '~> 3.1.7'
# gem 'sassc-rails'
gem 'image_processing', '~> 1.2'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'web-console'
  # gem 'rack-mini-profiler'
  # gem 'spring'
  gem 'dotenv-rails'
  gem 'rails-controller-testing'
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem 'pry-rails'
  gem "webmock"
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  gem 'dockerfile-rails', '>= 1.2'
end