begin
  require 'bundler/setup'
rescue
  $stderr.puts 'Bundle is out of date. Try running:'
  $stderr.puts '    bundle install --path=~/.bundle'
  retry
end
require 'bundler/gem_tasks'

desc 'Serve presentation with showoff'
task :show do |t|
  %x!showoff serve!
end
