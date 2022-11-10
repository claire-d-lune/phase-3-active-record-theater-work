puts "Seeding roles ... "

r1 =Role.create(character_name: "Esmerelda")
r2 =Role.create(character_name: "Count of Monte Cristo")
r3 =Role.create(character_name: "Othello")
r4 =Role.create(character_name: "Faustus")
r5 =Role.create(character_name: "Iago")

puts "Seeding auditions ..."

Audition.create(hired: TRUE,actor: "Elrich Von Braun", location: "Bavaria", role_id:Role.all.sample.id)
Audition.create(hired: FALSE ,actor: "Gregor Samsa", location: "Prague", role_id:Role.all.sample.id)
Audition.create(hired: TRUE ,actor: "Vitaly SomethingChenko", location: "The octagon", role_id:Role.all.sample.id)
Audition.create(hired: FALSE,actor: "George Forman", location: "The television", role_id:Role.all.sample.id)
Audition.create(hired: TRUE,actor: "Mel Brooks", location: "Orlando", role_id:Role.all.sample.id)
Audition.create(hired: TRUE,actor: "Gorm Gomp the Luminant", location: "Classified", role_id:Role.all.sample.id)
Audition.create(hired: FALSE,actor: "Dolly Parton", location: "The right hand of God", role_id:Role.all.sample.id)