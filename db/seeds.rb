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
Dog.create(name: "Nacho", gender: "male", born_on: 2.years.ago, adoption_status: "looking for adoption", is_hdb_approved: "false", quote: "i love to eat", image_url: "https://cdn.filepicker.io/api/file/gtT7eZ9T6SxaAhExauQw,https://cdn.filepicker.io/api/file/MS0CStx0TguxMVl5Vo72" )
Dog.create(name: "Cyclops", gender: "male", born_on: 1.years.ago, adoption_status: "adopted", quote: "*winks*", image_url: "https://cdn.filepicker.io/api/file/vWDiG01sTPikDPrQC2Zw")
Dog.create(name: "Wolverine", gender: "male", born_on: 3.months.ago, adoption_status: "adopted",is_hdb_approved: "true", quote: "you scratch my back and i'll scratch yours", image_url: "https://cdn.filepicker.io/api/file/P6XAT9xdR2nlakoAMmge")
Dog.create(name: "Jennah", gender: "female", born_on: 2.years.ago, adoption_status: "looking for adoption", is_hdb_approved: "false", quote: "I love cuddles.", image_url: "https://cdn.filepicker.io/api/file/NPhZC21RU2Ptc6nA0XPw")
Dog.create(name: "Josiah", gender: "male", born_on: 20.years.ago, adoption_status: "looking for adoption", is_hdb_approved: "true", quote: "I love basking in the sun and playing with children. I handle life just fine.", image_url: "https://cdn.filepicker.io/api/file/J6CTe8taRSqJfH0vz8gx")
Dog.create(name: "Baby", gender: "female", born_on: 6.months.ago, adoption_status: "looking for adoption", is_featured: true, is_hdb_approved: "true", quote: "I love cuddles, basking in the sun and playing with children. I walk with a limp but I handle life just fine.",image_url: "https://cdn.filepicker.io/api/file/ZfxnGRPWQnucZv5h023m")

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



# Create static pages content placeholder

Page.create(
             :title => "About",
           :content => "<h1><strong>Mutts Rescue</strong></h1><div><br></div><div>Please adopt these lovely dogs and give them a place to call home.</div><div><br></div>"
           )
Page.create(
             :title => "Contact",
           :content => "<h1>Pls contact us to adopt</h1>"
           )
Page.create(
             :title => "Get Involved",
           :content => "<h1><strong>There are several ways to get involved.</strong></h1><ul><li>Adopt</li><li>Donate</li><li>Foster</li><li>Volunteer</li></ul>"

           )
Page.create(
             :title => "Events",
           :content => "<h1><strong>Events</strong></h1><div><br></div><div>Adoption drive</div><div><em>Come meet our HDB approved dogs on the 8th October 2016 (Saturday) from 11-4pm at Leban Park, behind Sembawang Hills Food Centre. Upper Thomson Road behind ESSO! Help us spread the words!</em><br><br></div>"
           )
Page.create(
             :title => "Merchandise",
           :content => "<h1>Nutripe Canned Food</h1><div>WOOF OUT LOUD has lend many incredible hands to our team and currently they are having a superb deal for Nutripe canned food. 12 cans at $46 and 24 cans for $90! All of our dogs love nutripe! Will you help us feed them before the promotion ends on the 30th September 2016? Please pm Woof Out Loud at <a href=\"https://www.facebook.com/Woofoutloud/\">https://www.facebook.com/Woofoutloud/</a> if you wish to donate a carton(s) to Mutts Rescue dogs!<br><br></div><h1>16gb wristband thumb drives</h1><div>We are selling 30 beautiful 16gb wristband thumb drives to raise funds for our in-house 20+ rescued dogs for their annual vaccinations in October. Each thumb drive is at $30. The sales of all thumb drives will help cover their annual vaccines and 1 month supply of anti fleas and ticks application (Revolution) and some shampoos. Please support us and buy one! We provide free normal postage fee to you! Please pm us for sale! *Important note: Thank you to Karen, Cyrus and Phoebe for supplying such high quality wristband thumb drives to Mutts Rescue for a good cause!<br><br></div>"
           )

# Create photo content placeholder


 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/H1cItfPMQeauHGxOCVTh",
           :caption => "hello again!",
           :profile => false,
            :dog_id => 1,
            )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/YsuwNZU5TBw8anBd8Bo2",
           :caption => "puppy in the garden",
           :profile => false,
            :dog_id => 1,
             )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/TN5QEV4SpCMWKpfymEbw",
           :caption => "yummy",
           :profile => false,
            :dog_id => 1,
            )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/HBdz3nOuRfWvdAIyi0CE",
           :caption => "all dressed up!",
           :profile => false,
            :dog_id => 1,
             )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/iZvXDeryQA2pYSGbgfw2",
           :caption => "",
           :profile => true,
            :dog_id => 4,
            )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/kd5KPDQIRCDQmTD8gCRg",
           :caption => "I'm Nacho!",
           :profile => true,
            :dog_id => 1,
            )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/tzT33fQ4QLuwwdcNUFgF",
           :caption => nil,
           :profile => false,
            :dog_id => 5,
            )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/ywZpUaDOQkSEnIdsZ1kP",
           :caption => nil,
           :profile => false,
            :dog_id => 6,
            )
 Photo.create(
           :imglink => "https://cdn.filepicker.io/api/file/EhXXDWyFR5ytyog8bAn9",
           :caption => nil,
           :profile => false,
            :dog_id => 8,
    )


