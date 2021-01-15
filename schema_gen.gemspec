# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','schema_gen','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'schema_gen'
  s.version = SchemaGen::VERSION
  s.author = 'Matthew LaFalce'
  s.email = 'matt@mattlafalce.me'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'This project will generate documentation for your rails Web App'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','schema_gen.rdoc']
  s.rdoc_options << '--title' << 'schema_gen' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'schema_gen'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency("standardrb")
  s.add_development_dependency("bump", "~> 0.10.0")
  s.add_runtime_dependency('gli','2.19.2')
end
