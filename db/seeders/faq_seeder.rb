module Seeders
  class FaqSeeder
    def seed!
      Faq.transaction do
        Faq.create!(
          question: "What does EBABZ stand for?",
          answer: "East Bay Alternative Book and Zine Fest"
        )
        puts "Seeded FAQ"
      end
    end
  end
end
