# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "standard/rake"

RSpec::Core::RakeTask.new(:spec)

desc "Run rbs definitions against specs"
task :test_sig do |t|
  sh "RBS_TEST_TARGET='Cloudlayer::*' RUBYOPT='-rrbs/test/setup' rspec --fail-fast"
end

task default: %i[spec standard test_sig]
