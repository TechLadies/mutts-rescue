# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Create the default admin user
User.create(email: 'admin@example.invalid', password: 'ilovedogs')

# Create people
Person.create(name: 'Mary', phone: '9865 5478', email: 'mary@gmail.com', bank_acct: '187 65443 22', address: '21 Sunset Cove, Singapore 76599')
Person.create(name: 'John', phone: '9765 7834', email: 'john@gmail.com', bank_acct: '037 34541 09', address: 'Blk 142 Boon Lay Street, Singapore 93649')
Person.create(name: 'Teck Huay Leng', phone: '9426 3452', email: 'teck.huayleng@gmail.com', bank_acct: '936 33345 23', address: '42 Crescent Ave, Singapore 346429')
Person.create(name: 'Joseph', phone: '9346 8962', email: 'joseph@gmail.com', bank_acct: '038 99445 65', address: '15A Marina Cove, Singapore 334552')
Person.create(name: 'Amanda', phone: '4536 3442', email: 'amanda@gmail.com', bank_acct: '934 45349 67', address: 'Blk 342, Ang Mo Kio Ave 1, Singapore 342251')

# Create dogs
Dog.create(name: "Gambit", gender: "male", born_on: 2.years.ago, adoption_status: "looking for adoption", quote: "i love to eat" )
Dog.create(name: "Cyclops", gender: "male", born_on: 1.years.ago, adoption_status: "adopted", quote: "*winks*")
Dog.create(name: "Wolverine", gender: "male", born_on: 3.months.ago, adoption_status: "adopted",is_hdb_approved: true, quote: "you scratch my back and i'll scratch yours")
Dog.create(name: "Storm", gender: "female", born_on: 2.years.ago, adoption_status: "looking for adoption", is_hdb_approved: false, quote: "I love cuddles.")
Dog.create(name: "Professor X", gender: "male", born_on: 20.years.ago, adoption_status: "looking for adoption", is_hdb_approved: true, quote: "I love basking in the sun and playing with children. I handle life just fine.")
Dog.create(name: "Raven", gender: "female", born_on: 6.months.ago, adoption_status: "looking for adoption", is_featured: true, is_hdb_approved: true, quote: "I love cuddles, basking in the sun and playing with children. I walk with a limp but I handle life just fine.")
