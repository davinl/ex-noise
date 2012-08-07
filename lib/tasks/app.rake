namespace :db do
  desc "Loads initial database models for the current environment."
  task :populate => :environment do
    #require 'active_record_extensions'
    Dir[File.join(Rails.root, 'db', 'populate', '*.rb')].sort.each do |fixture| 
      load fixture 
      puts "Loaded #{fixture}"
    end
    (Dir[File.join(Rails.root, 'db', 'populate', Rails.env, '*.rb')] + Dir[File.join(Rails.root, 'db', 'populate', 'shared', '*.rb')]).sort{|x,y| File.basename(x) <=> File.basename(y)}.each do |fixture|
      load fixture 
      puts "Loaded #{fixture}"
    end
    Dir[File.join(Rails.root, 'db', 'populate', 'after', '*.rb')].sort.each do |fixture| 
      load fixture 
      puts "Loaded #{fixture}"
    end
  end
end