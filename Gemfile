source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks', '~> 2.1'
gem 'jbuilder', '~> 2.5'
gem 'best_in_place', '~> 3.1'
gem 'stripe'
gem 'friendly_id', '~> 5.1'
gem 'pg'
gem 'aws-sdk'
gem 'aws-sdk-rails'
gem 'dotenv', '~> 2.2'
gem 'bcrypt', '~> 3.1', '>= 3.1.11'
gem 'cocoon', '~> 1.2', '>= 1.2.9'
gem 'redcarpet', '~> 3.3', '>= 3.3.4'
gem 'coderay', '~> 1.1', '>= 1.1.1'
gem 'passenger', '~> 5.0', '>= 5.0.30'
gem 'gritter', '~> 1.2'
gem 'jquery-fileupload-rails', '~> 0.4.7'
gem 'turnout', '~> 2.4'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'jquery-ui-rails'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'rails_real_favicon'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor'
end