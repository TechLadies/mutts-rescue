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

Dog.create(name: 'Wanda', gender: 'female', born_on: Time.now.to_datetime, adoption_status: 'adopted', image_url: 'https://cdn.filepicker.io/api/file/QzqMJFx0TBuomgCJvTAH')
Dog.create(name: 'Harvey', gender: 'male', born_on: Time.now.to_datetime, adoption_status: 'looking for adoption', image_url: 'https://cdn.filepicker.io/api/file/1SWAMPW1SjywGRiX6qdu')


# Create dog updates for dog wanda
Update.create(dog_id: 1, date:Time.now.to_datetime, image_url: 'https://cdn.filepicker.io/api/file/4oX4K4Q5IHORmBTbq1QI', text: 'Hey peeps! Remember Wanda, the forgotten pup? This girl may had a tough beginning, but now she has earned herself a family that will truly love her forever. Wanda now knows her name and responds really well to it. She now walks well on the leash and is now outdoor trained! This girl is growing and glowing at the same time! Wanda was extremely well behaved and has a gentle temperament during her home stay and that was why her foster family fell in love with her instantly.')
Update.create(dog_id: 1, date:Time.now.to_datetime, image_url: 'https://cdn.filepicker.io/api/file/HQTM6x7QDeyPm0rvELyR', text: 'Since our last update about Wanda still in the midst of training by our volunteer, there are some very good news to share! Wanda now knows her name! This girl wags her tail happily and responds quickly to whatever we are teaching her. She is like a learning sponge! She is doing well with walking on leash too.')
Update.create(dog_id: 1, date:Time.now.to_datetime, image_url: 'https://cdn.filepicker.io/api/file/zbVUM41rTnO3ljYlHMpQ', text: 'Wanda does not respond well to her new name yet. She is not toilet trained too BUT she is food motivated, love hugs from humans, loves other dogs and is extremely smart. We believe in no time, this girl will be able to master all the basic commands from our volunteers and charm her new family. Looking for a serious adopter who can give her a forever home where she can learn and experience love all over again. She had gone through her first vaccine and medical check and is deemed fit to be rehomed by her vet.')


# Create dog updates for dog harvey
Update.create(dog_id: 2, date:Time.now.to_datetime, image_url: 'https://cdn.filepicker.io/api/file/FaeHIN7bSyXolYccQBAA', text: 'Harvey may be shy and may try to avoid you when he first meets you, but he will warm up to you eventually. After that, he is a sweet and loving boy. He is the last batch of pups that we had bailed out from AVA. His brothers and friends are all adopted and are currently on home trials, but he is still with us. We could not understand why he does not have any enquiry at all. Give this boy a chance, adopt him if you can cos he is a sweet and protective soul.')
Update.create(dog_id: 2, date:Time.now.to_datetime, image_url: 'https://cdn.filepicker.io/api/file/AEF9bYyVRp6C76J3JBk2', text: 'Poor Harvey is down with Aspiration (Pneumonia). He had just been seen by vet and is coming home with a course of antibiotics. Hope he will be getting better and stronger soon!')
Update.create(dog_id: 2, date:Time.now.to_datetime, image_url: 'https://cdn.filepicker.io/api/file/VZWMD3CRSt11LbTYoEMY', text: 'Harvey had his first trip to Bishan dog park and he loves it! He loves running around the park and playing with all his dog buddies. This goofy baby is still looking for a forever home, please open your heart to accept him. Harvey has a few enquiries but all never came closed for trying him out for home trials. Harvey is a male puppy rescued at a forested area in the north side of our sunny island. He is a sweet "lap" dog. Loves humans and enjoys sitting on your lap for affection. He likes to sleep and play and is food motivated. Give him a home!')
