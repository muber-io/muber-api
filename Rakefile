require 'bundler/setup'

Dir.glob('spec/*.rake').each { |r| import r }

desc 'Open a console.'
task :console do
  exec('bundle exec pry -r ./config/boot.rb')
end
