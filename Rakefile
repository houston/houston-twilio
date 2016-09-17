begin
  require "bundler/setup"
rescue LoadError
  puts "You must `gem install bundler` and `bundle install` to run rake tasks"
end


# `rake test` and `rake test:all` are loaded from Houston
require_relative "test/dummy/houston"
Houston::Application.load_tasks


require "rdoc/task"

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "Twilio"
  rdoc.options << "--line-numbers"
  rdoc.rdoc_files.include("README.rdoc")
  rdoc.rdoc_files.include("lib/**/*.rb")
end


Bundler::GemHelper.install_tasks

