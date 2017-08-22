module Seeders
  class ArticleSeeder
    def seed!
      Article.transaction do
        article_attributes.each do |attributes|
          Article.create!(attributes)
        end
        puts "Seeded Articles"
      end
    end

    def article_attributes
      [
        {
          publication: "East Bay Express",
          title: "The East Bay 'Zine Scene",
          url: "https://www.eastbayexpress.com/oakland/the-east-bay-zine-scene/Content?oid=3847458",
          year: 2014
        },
        {
          publication: "East Bay Express",
          title: "Fourth Annual East Bay Alternative Book and Zine Fest",
          url: "https://www.eastbayexpress.com/oakland/fourth-annual-east-bay-alternative-book-and-zine-fest/Event?oid=3768397",
          year: 2013
        },
        {
          publication: "SF Zine Fest",
          title: "First timer at the East Bay Alternative Book and Zine Fest",
          url: "http://www.sfzinefest.org/blog/zinefest.org/2013/02/first-timer-at-east-bay-alternative.html",
          year:  2013
        },
        {
          publication: "SF Gate",
          title: "Alternative Book and Zine Fest, Dec. 8",
          url: "http://www.sfgate.com/art/article/Alternative-Book-and-Zine-Fest-Dec-8-4094197.php",
          year: 2012
        },
        {
          publication: "POC Zine Project",
          title: "POC Zine Project Q & A with Tomas Moniz",
          url: "http://poczineproject.tumblr.com/post/37407016359/zinester-spotlight-tomas-moniz-rad-dad-2012",
          year:  2012
        }
      ]
    end
  end
end
