require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new :spec

task :default => :spec

task :console do
  exec "irb -r mega_lotto -I ./lib"
end

load "./lib/mega_lotto/tasks/mega_lotto.rake"
