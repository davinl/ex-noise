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

    namespace :test do
      task :rebuild do
        system('rake db:schema:load RAILS_ENV=test')
        system('rake db:migrate RAILS_ENV=test')
        #system('rake db:populate')
        #system('rake db:test:prepare')
        system('rake db:populate RAILS_ENV=test')
        system('rake db:fixtures:load RAILS_ENV=test')
        # system('rake db:reset_sequences RAILS_ENV=test')
      end
    end


  end

  namespace :test do
    Rake::TestTask.new(:units => "db:test:rebuild") do |t|
      t.libs << "test"
      t.pattern = 'test/unit/**/*_test.rb'
      t.verbose = true
    end
  end
