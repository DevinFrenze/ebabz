module Seeders
  class FAQSeeder
    def seed!
      FAQ.transaction do
        FAQ.create!(
          question: "What does EBABZ stand for?",
          answer: "East Bay Alternative Book and Zine Fest"
        )
        puts "Seeded FAQ"
      end
    end
  end
end
