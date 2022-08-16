puts "Seeding..."

Audition.destroy_all
Role.destroy_all

ronald = Role.create(character_name: "Ronald McDonald")

lucas = Audition.create(actor: "Lucas Duncan", location: "Texas", phone: 12345, hired: true, role: ronald)
person = Audition.create(actor: "Person McDude", location: "Pennsylvania", phone: 12345, hired: true, role: ronald)
annie = Audition.create(actor: "Little Orphan Annie", location: "Oregon", phone: 12345, hired: false, role: ronald)

albus = Role.create(character_name: "Albus Dumbledore")

snape = Audition.create(actor: "Professor Snape", location: "Hogwarts", phone: 12345, hired: false, role: albus)
carrot = Audition.create(actor: "Carrot Top", location: "California", phone: 12345, hired: false, role: albus)
franz = Audition.create(actor: "Franz Ferdinand", location: "Milwaukee", phone: 12345, hired: false, role: albus)


puts "Done seeding."