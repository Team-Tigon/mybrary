# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(name: "Sam Yang", uid: "793818775", provider: "facebook", oauth_token: "CAAIDKdWrzEMBAIgyH4XWea8ZCC0mHZBdRa2PUxzOupMefZAf9DrjKZAqZAUfbW4t8onB6Qje90MPfgHNujyNYDx85i9cjBwyZB0fQ6zAQgrCzbcyaVRwNZCfLSM2syFe4nKruHf9ZBxcZBwzy8XEQsw7f6ociuCmMVOJ5anKM4r2FGtimzoZB5TSqWpVLflQGQbNA9dVI34QtLWAZDZD")
Item.create(
  user_id: 1, 
  name: "Edward Scissorhands", 
  description: "DVD of Tim Burton's best IMHO", 
  url: "http://www.amazon.com/Edward-Scissorhands-Anniversary-Johnny-Depp/dp/B0000AC8LI/ref=sr_1_2?ie=UTF8&qid=1385581987&sr=8-2&keywords=edward+scissorhands"
  )
Item.create(
  user_id: 1, 
  name: "The Alchemist", 
  description: "A fantastic fable and 2-hour read about following your dream", 
  url: "http://www.amazon.com/The-Alchemist-Paulo-Coelho/dp/B007Y9BHPW/ref=sr_1_9?ie=UTF8&qid=1385582581&sr=8-9&keywords=the+alchemist"
  )
Item.create(
  user_id: 1,
  name: "Rachmaninoff Plays Rachmaninoff: 4 Piano Concertos", 
  description: "RCA Victor 2-Disc CD / Classical Music", 
  url: "http://www.amazon.com/Rachmaninoff-Plays-The-Piano-Concertos/dp/B000003FGS/ref=sr_1_1?ie=UTF8&qid=1385582665&sr=8-1&keywords=rachmaninoff"
  )
Item.create(
  user_id: 1, 
  name: "Halo", 
  description: "Original Xbox game", 
  url: "http://www.amazon.com/Halo-Combat-Evolved-Xbox/dp/B00005NZ1G/ref=sr_1_10?ie=UTF8&qid=1385582850&sr=8-10&keywords=halo",
  )
Item.create(
  user_id: 1, 
  name: "Magic card: Krenko's Command", 
  description: "Red card, M13 set", 
  url: "http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=259213",
  )


u2 = User.create(name: "James Tong", uid:"1351920338" , provider: "facebook" , oauth_token: "CAAIDKdWrzEMBAEI09m2qD6j1Hs5V2xQCDi9tvDa5q0XTdZA5C88TwuML4I6U8HjKwoZAiSV5GUwg5EH5RyYl7ssTx8iPRiACZCeE9COi4iBvmDPwttHyh3jPTFjQIsZBMUwTIlXQy5AJ0vx0P9J9aY5zbz56qIKMgDRxyY6FgoQthOZA1MVR4tguZA7HNe5CAZD")
Item.create(
  user_id: 2, 
  name: "Beginning Ruby", 
  url: "http://www.amazon.com/Beginning-Ruby-Novice-Professional-Experts/dp/1430223634/ref=sr_1_1?ie=UTF8&qid=1385583470&sr=8-1&keywords=beginning+ruby"
  )
Item.create(
  user_id: 2, 
  name: "Professional Javascript for Web Developers", 
  url: "http://www.amazon.com/Professional-JavaScript-Developers-Nicholas-Zakas-ebook/dp/B006PW2URI/ref=sr_1_1?s=books&ie=UTF8&qid=1385583999&sr=1-1&keywords=professional+javascript"
  )
Item.create(
  user_id: 2,
  name: "Get Lucky - Daft Punk", 
  description: "MP3" 
  )

u3 = User.create(name: "Josh")
Item.create(
  user_id: 3, 
  name: "Edward Scissorhands", 
  description: "Josh's copy of DVD", 
  url: "http://www.amazon.com/Edward-Scissorhands-Anniversary-Johnny-Depp/dp/B0000AC8LI/ref=sr_1_2?ie=UTF8&qid=1385581987&sr=8-2&keywords=edward+scissorhands"
  ).save
Item.create(
  user_id: 3, 
  name: "The Rails 4 Way", 
  url: "http://www.amazon.com/Rails-Way-Addison-Wesley-Professional-Ruby/dp/0321944275/ref=sr_1_1?s=books&ie=UTF8&qid=1385584902&sr=1-1&keywords=rails+4+way"
  )
Item.create(
  user_id: 3,
  name: "Justin Timberlake - the 20/20 experience", 
  url: "http://www.amazon.com/Justin-Timberlake-20-Experience-Songbook-ebook/dp/B00GWKFJQW/ref=sr_1_1?s=books&ie=UTF8&qid=1385584926&sr=1-1&keywords=justin+timberlake"
  )
Item.create(
  user_id: 3, 
  name: "Warcraft III Battle Chest", 
  description: "PC", 
  url: "http://www.amazon.com/Warcraft-III-Battle-Chest-PC-Mac/dp/B00009ECGK/ref=sr_1_1?ie=UTF8&qid=1385584978&sr=8-1&keywords=warcraft"
  )
Item.create(
  user_id: 3, 
  name: "My best Magic Card Set" 
  )
Item.create(
  user_id: 3, 
  name: "Hammer",
  description: "Just a plain old hammer" 
  )

g1 = Group.create(name: "003 Flatiron", description: "Crowd Library of flatiron 003 Ruby Rails students and staff")
g2 = Group.create(name: "000 Flatiron iOS", description: "Crowd Library of flatiron 000 iOS students and staff")

Membership.create(group_id: 1, user_id: 1)
Membership.create(group_id: 1, user_id: 2)
Membership.create(group_id: 1, user_id: 3)
Membership.create(group_id: 2, user_id: 1)





# http://www.amazon.com/s/ref=nb_sb_ss_i_0_10?url=search-alias%3Daps&field-keywords=edward+scissorhands&sprefix=edward+sci%2Caps%2C178&rh=i%3Aaps%2Ck%3Aedward+scissorhands
# http://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords=the+alchemist&rh=i%3Aaps%2Ck%3Athe+alchemist
# http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=Rachmaninoff%20Plays%20Rachmaninoff%3A%204%20Piano%20Concertos
# http://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords=halo&rh=i%3Aaps%2Ck%3Ahalo