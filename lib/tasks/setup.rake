desc "runs `rake db:setup` && seeds database w/ a few ToDos"

# this method runs in dev, but not production
task :setup => :environment do
  system("bundle exec rake db:setup")
  puts "Database set up complete"

  Fabricate.times(5, :to_do)
  puts "5 ToDos created"
end
