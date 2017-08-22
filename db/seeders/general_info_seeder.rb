module Seeders
  class GeneralInfoSeeder
    def seed!
      GeneralInfo.transaction do
        GeneralInfo.create!(
          history: history,
          safe_space_policy: safe_space_policy
        )
        puts "Seeded General Info"
      end
    end

    def history
      "In 2010, two Bay Area writers/zinesters decided it was time the East Bay had its own indie media celebration modeled on the amazing work people were doing in San Francisco and Portland. Tomas Moniz and MK Chavez organized the first East Bay Alternative Press Book Fair. It was a wonderful experience and a huge success, bringing over 50 participants into Berkeley City College. In 2011, Brooke Appler created the flyer and helped organize the event. Again the tables went quickly, with over 60 vendors and artists participating, and attendance doubled. In 2012, Tomas teamed up with the amazing Rock Paper Scissors Collective. Collective member Ara and volunteers Jamie, Olivia, and Crystal helped the event grow to new heights! That year also came with a new name: East Bay Alternative Book and Zine Festival, or EBABZ (say, \"e-babes,\") Fest for short. After expanding onto two floors in 2014, EBABZ Fest is getting prepped for this year's zine extravaganza!

      Thank you to everyone who comes out each year, especially the wonderful tablers, workshop leaders, and speakers! We look forward to seeing you again soon! If you have any suggestions, connections, or recommendations on how to improve EBABZ Fest, please do not hesitate let us know. Keep writing, keep living! Love, the EBABZ Fest crew!"
    end

    def safe_space_policy
      " The EBABZ Fest is a safe space, which means that it is intended to be a welcoming, engaging, and supportive environment free of oppressive actions, behaviors, and language. Participants and attendees are asked to consider how their language and behavior impact others in attendance. This policy extends to materials presented by EBABZ Fest tablers. 

      We will not tolerate racism, sexism, classism, ableism, homophobia, transphobia, and all other forms of discrimination, theft of money or property, or causing participants or attendees to feel distressed or unsafe.

      The following guidelines will help EBABZ Fest be a safe space:
      - Respect peoples' physical and emotional boundaries. (For example, ask before taking a photo, etc.)
      - Respect peoples' opinions, beliefs, differing states of being, and differing points of view.
      - Be responsible for your actions, and be aware that they may have an effect on others regardless of original intent.

      Should an issue arise with a participant or attendee before or during the fest, the EBABZ Fest staff will be available to hear these concerns and find a solution that is in the best interests of the community and the event being a safe space. The staff reserves the right to ask any attendees who are violating the safe space policy to address their unsafe behavior or language, or leave the event. 

      Adapted from the Chicago Zine Fest Safer Space Policy"
    end
  end
end
