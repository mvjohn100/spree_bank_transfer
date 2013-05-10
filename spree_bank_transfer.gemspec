# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_bank_transfer'
  s.version     = '1.0.0'
  s.summary     = 'Adds payment method by bank transfer'
  #s.required_ruby_version = '>= 1.8.7'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'john'
  s.email     = 'john@klairvoyant.com'
  s.homepage  = 'https://github.com/mvjohn100/spree_bank_transfer_simplified.git'
  s.description = "simplified version of the gem named spree_bank_transfer. it's discarded twilio API and a partial file _payment_confirmation"
  s.license = 'New BSD'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.2'
  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
