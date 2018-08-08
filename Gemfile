source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'responders', '~> 2.4'
gem 'rails', '~> 5.1.4'
gem 'figaro'
gem 'bcrypt-ruby', '3.1.2'

gem "omniauth-google-oauth2", "~> 0.2.1"

gem 'geocoder', '~> 1.4'
gem "scrollreveal-rails"
gem 'vuejs-rails'
gem "jquery-slick-rails"
gem 'react-rails'
gem 'webpacker'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'ckeditor', github: "galetahub/ckeditor"
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'normalize-rails'
gem 'bootstrap_form'
gem 'pg'
gem "font-awesome-rails"
gem 'simple_form', '~> 3.2'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'jquery-rails'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'

end
gem 'role_model', '~> 0.8.2'
gem 'stripe'
gem 'devise'
gem 'toastr-rails'
gem 'pundit'
gem 'social-share-button'
gem 'carrierwave'
gem 'mini_magick'
gem "pundit"

group :development, :test do
  gem 'pg'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.7'
  gem 'factory_bot_rails'
end

group :test do
  gem 'database_cleaner'
end

group :production do
  gem 'pg'
end

group :development do
  gem 'pg'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
