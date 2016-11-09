require "bundler/gem_tasks"
require "rake/testtask"

desc "Run the unit test suite"
task :default => 'test:unit'
task :test => 'test:unit'

namespace :test do
  Rake::TestTask.new(:unit) do |t|
    t.pattern = 'test/unit/**/*_test.rb'
    t.ruby_opts << '-rubygems -w'
    t.libs << 'test'
    t.verbose = true
  end

  Rake::TestTask.new(:remote) do |t|
    t.pattern = 'test/remote/**/*_test.rb'
    t.ruby_opts << '-rubygems -w'
    t.libs << 'test'
    t.verbose = true
  end
end