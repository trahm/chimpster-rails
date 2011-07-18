$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'chimpster'
require 'chimpster-rails'
require 'rspec'
#require 'spec'
#require 'spec/autorun'


ActionMailer::Base.delivery_method = :chimpster
ActionMailer::Base.prepend_view_path(File.join(File.dirname(__FILE__), "fixtures", "views"))

Dir["#{File.dirname(__FILE__)}/fixtures/models/*.rb"].each { |f| require f }
