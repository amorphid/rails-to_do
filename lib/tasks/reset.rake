desc "runs `rake db:drop` && `rake setup"

# this method runs in dev, but not production
task :reset => :environment do
  system("bundle exec rake db:drop")
  puts "Database dropped"

  system("bundle exec rake setup")
end
