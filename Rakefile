# Copyright © 2011, José Pablo Fernández

require "bundler"
Bundler::GemHelper.install_tasks

require "rake/testtask"
Rake::TestTask.new do |t|
  t.test_files = FileList["test/*.rb"]
  t.verbose = true
end