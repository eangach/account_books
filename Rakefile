require 'rake/testtask'

task default: :test

Rake::TestTask.new do |t|
  ENV['DB'] = 'sqlite::memory:'
  t.libs.push 'lib'
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end
