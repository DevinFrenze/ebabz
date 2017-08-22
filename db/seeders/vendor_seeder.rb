module Seeders
  class VendorSeeder
    def seed!
      @fest = Fest.first
      Vendor.transaction do
        vendor_attributes.each do |attributes|
          Vendor.create!(**attributes, fests: [ @fest ])
        end
        puts "Seeded Vendors"
      end
    end

    def vendor_attributes
      [
        {
          name: "Akratic Behavior",
          url: "http://akraticbehavior.tumblr.com/"
        },
        {
          name: "Anand Vedawala",
          url: "https://www.anandvedawala.com/"
        },
        {
          name: "Art Activist Nia",
          url: "http://artactivistnia.com/"
        },
        {
          name: "Asswipe",
          url: "http://asswipemagazine.storenvy.com/"
        },
        {
          name: "Awkward Ladies Club",
          url: "http://awkwardladiesclub.com/"
        },
        {
          name: "Bagger Sampler 4",
          url: "http://bagger43.com/"
        },
        {
          name: "Bay Area Trans Writers Workshop",
          url: "https://bayareatranswriters.tumblr.com/"
        },
        {
          name: "Bibliophiliac Zines",
          url: "http://bibliophiliac.bigcartel.com/"
        },
        {
          name: "Breenache",
          url: "http://breenache.tumblr.com/"
        },
        {
          name: "Bubblesort Zines",
          url: "https://shop.bubblesort.io/"
        },
        {
          name: "Cake and Comix",
          url: "http://cakeandcomix.tumblr.com/"
        },
        {
          name: "Chicken Milkshake Zines",
          url: "https://chickenmilkshakezines.tumblr.com/"
        },
        {
          name: "Coin-Op",
          url: "http://www.coinopbooks.com/"
        },
        {
          name: "Comics by Nomi Kane and Kat Efird",
          url: "http://www.brewforbreakfast.com/"
        },
        {
          name: "Cool Dog",
          url: "https://miquelacomics.tumblr.com/"
        },
        {
          name: "Courtenberry Comics",
          url: "http://courtenberrycomics.tumblr.com/"
        },
        {
          name: "Damian Le",
          url: "http://calamityhorror.tumblr.com/"
        },
        {
          name: "David Polka",
          url: "http://davidpolka.com/"
        },
        {
          name: "Deth P. Sun",
          url: "http://www.dethpsun.com/"
        },
        {
          name: "DisCantBeLife Press (DCBL Press)",
          url: "https://mkt.com/store/DCBL"
        },
        {
          name: "E. Sjule Comics",
          url: "http://erikasjule.com/"
        },
        {
          name: "Elise Bernal",
          url: "https://www.etsy.com/people/elisebee"
        },
        {
          name: "FLOSS Editions",
          url: "http://www.flosseditions.com/"
        },
        {
          name: "Fox and Redwood",
          url: "https://www.etsy.com/shop/FoxandRedwood"
        },
        {
          name: "Gimme Action",
          url: "http://www.gimmeaction.com/"
        },
        {
          name: "Gracie CT",
          url: "http://graciect.bigcartel.com/"
        },
        {
          name: "Irrelevant Press",
          url: "http://www.irrelevantpress.com/"
        },
        {
          name: "ivy atoms",
          url: "https://ivyatoms.wordpress.com/"
        },
        {
          name: "Jamie Oliveira",
          url: "http://www.jamie-oliveira.com/"
        },
        {
          name: "Jool's Comix",
          url: "https://jooliefiveash.tumblr.com/"
        },
        {
          name: "Lauren Lim",
          url: "http://www.lauren-lim.com/"
        },
        {
          name: "Lawrence Lindell Studios",
          url: "https://www.facebook.com/lawrencelindellstudios"
        },
        {
          name: "Lazer Zine",
          url: "http://www.alexsodari.com/"
        },
        {
          name: "Lemon Drop Press/COME FIND OUT",
          url: "https://www.etsy.com/shop/lemondroppresss"
        },
        {
          name: "Lisa Sy",
          url: "http://pluralsandnoun.com/"
        },
        {
          name: "Lucretia Samuel",
          url: "http://lucretiarhyssamuel.bigcartel.com/"
        },
        {
          name: "Maximum Rocknroll",
          url: "http://www.maximumrocknroll.com/"
        },
        {
          name: "ME(め)",
          url: "https://mehome.wordpress.com/"
        },
        {
          name: "MFA in Comics, California College of the Arts",
          url: "http://comics.cca.edu/"
        },
        {
          name: "Milvia Street",
          url: "https://www.facebook.com/Milvia-Street-339759404487/"
        },
        {
          name: "Minnie Phan",
          url: "http://minniephan.com/"
        },
        {
          name: "Mixed Race Queer Feminist",
          url: "http://mrqfzine.tumblr.com/"
        },
        {
          name: "Mixed Rice Zines",
          url: "https://www.mixedricezines.com/"
        },
        {
          name: "Mocha Mix Zines",
          url: "http://maryaerrinjones.com/"
        },
        {
          name: "Nicole Goux",
          url: "http://www.nicolegoux.com/"
        },
        {
          name: "Outmeal Magazine",
          url: "https://oatmealmagazine.com/"
        },
        {
          name: "Paradox Creations",
          url: "https://www.etsy.com/shop/ParadoxNowCreations"
        },
        {
          name: "Queer Anxiety Babiez Distro",
          url: "http://queeranxietybabiezdistro.tumblr.com/"
        },
        {
          name: "RE/Search",
          url: "http://www.researchpubs.com/"
        },
        {
          name: "Rock Paper Scissors Collective",
          url: "http://rpscollective.org/"
        },
        {
          name: "Ryan King",
          url: "http://ryankingwrites.com/"
        },
        {
          name: "Sabrina Barekzai",
          url: "https://www.sabrinabarekzai.com/"
        },
        {
          name: "Scumburbia",
          url: "http://www.samgrinberg.com/"
        },
        {
          name: "Silver Sprocket",
          url: "http://www.silversprocket.net/"
        },
        {
          name: "The Snack Bar Collective",
          url: "http://thesnackbarcollective.tumblr.com/"
        },
        {
          name: "STIMULUS",
          url: "http://stimuluscomic.com/"
        },
        {
          name: "The Grand Newsstand",
          url: "http://www.thegrandnewsstand.com/"
        },
        {
          name: "The Stay At Home Girlfriend",
          url: "http://www.missmuffcake.com/"
        },
        {
          name: "Thick Thigh Collective",
          url: "https://www.facebook.com/ThickThighCollective"
        },
        {
          name: "Two Photon Art",
          url: "https://www.twophotonart.com/"
        },
        {
          name: "Unity Press",
          url: "https://www.jeffreycheung.com/"
        },
        {
          name: "Zines Rasquache",
          url: "https://www.etsy.com/shop/ZinesRasquache"
        }
      ]
    end
  end
end
