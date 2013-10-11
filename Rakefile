require 'rake/testtask'

desc "Run all tests"
task test: %w(test:spec)

namespace :test do
  Rake::TestTask.new(:spec) do |t|
    t.libs << "spec"
    t.pattern = 'spec/**/*_spec.rb'
    t.verbose = true
  end

  Rake::TestTask.new(:controllers) do |t|
    t.libs << "spec"
    t.pattern = 'spec/controllers/**/*_spec.rb'
    t.verbose = true
  end
end

desc "Default: run all tests and generate coverage report"
task :default => :cov

task cov: %w(coverage)
desc "Generates coverage report via simplecov (shortcut cov)"
task :coverage do
  ENV['ENV'] = "coverage"
  Rake::Task["test"].invoke
end
