namespace :db do
  desc "Seeds Products"

  task product_seeds: :environment do
        load(File.join(Rails.root, 'db', 'seeds.rb'))
    end
end
