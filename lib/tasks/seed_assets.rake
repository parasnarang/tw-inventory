namespace :assets do

  desc "Seed Predefined Assets from CSV"
  task :seed => :environment do
    file_path = ENV['file_path']
  end

end