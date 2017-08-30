module Seeders
  class FestSeeder
    def seed!
      Fest.transaction do
        Fest.create!(**fest_attributes_2016)
        puts "Seeded 2016 Fest"
        Fest.create!(**fest_attributes_2017)
        puts "Seeded 2017 Fest"
      end
    end

    def fest_attributes_2017
      {
        year: 2017,
        start_time: "11",
        end_time: "17",
        date: Date.new(2017, 12, 10)
      }
    end

    def fest_attributes_2016
      {
        year: 2016,
        start_time: "10",
        end_time: "15",
        date: Date.new(2016, 12, 10),
        location: Location.create!(**location_attributes_2016)
      }
    end

    def location_attributes_2016
      {
        name: "David Brower Center",
        street: "2150 Allston Way",
        city: "Berkeley",
        state: "CA"
      }
    end
  end
end
