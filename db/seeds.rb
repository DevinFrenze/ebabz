# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dir[Rails.root.join("db/seeders/**/*.rb")].each { |f| require f }
Seeders::ArticleSeeder.new.seed!
Seeders::FestSeeder.new.seed!
Seeders::VendorSeeder.new.seed!
Seeders::GeneralInfoSeeder.new.seed!
Seeders::FAQSeeder.new.seed!
