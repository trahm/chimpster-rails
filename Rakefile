require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "chimpster-rails"
    gem.summary = %Q{Chimpster adapter for ActionMailer}
    gem.description = %Q{Use this plugin in your rails applications to send emails through SES via MailChimp API}
    gem.email = "mike@fotomoto.com"
    gem.homepage = "http://fotomoto.com"
    gem.authors = ["Michael Hart"]

    gem.add_dependency "actionmailer"
    gem.add_dependency "chimpster", ">= 0.1.0"
    gem.add_dependency "rake"

    gem.post_install_message = %q[
      ==================
      Thanks for installing the chimpster-rails gem.
      ==================
    ]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "chimpster-rails #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
