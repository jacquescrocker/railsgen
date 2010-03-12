namespace :db do

  desc 'Delete data and seed'
  task :reseed => :environment do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:seed"].invoke
  end

  desc 'Load the seed data from db/seed_data.rb'
  task :seed => :environment do
    seed_file = File.join(Rails.root, 'db', 'seed_data.rb')
    load(seed_file) if File.exist?(seed_file)
  end
  
  desc "Create the mongodb database (does nothing)"
  task :create => :environment do
    # noop
    puts "Creating: #{MongoMapper.database.name}"
  end
  
  desc "Drop the mongodb database"
  task :drop => :environment do
    puts "Dropping: #{MongoMapper.database.name}"
    MongoMapper.connection.drop_database(MongoMapper.database.name)
  end

  desc "Migrate the mongodb database (does nothing)"
  task :migrate => :seed do
    Rake::Task
  end
  
  namespace :test do
    task :prepare => :environment do
      # TODO: ... clear mongodb
    end
  end
  
end