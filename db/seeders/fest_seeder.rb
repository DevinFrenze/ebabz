module Seeders
  class FestSeeder
    def seed!
      Fest.transaction do
        Fest.create!(**fest_attributes)
        puts "Seeded 2016 Fest"
      end
    end

    def fest_attributes
      address = Address.create!(**address_attributes)
      {
        year: 2016,
        start_time: "10",
        end_time: "15",
        date: Date.new(2016, 12, 10),
        venue: "David Brower Center",
        address: Address.create!(**address_attributes)
      }
    end

    def address_attributes
      {
        street: "2150 Allston Way",
        city: "Berkeley",
        state: "CA"
      }
    end
  end
end
