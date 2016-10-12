class Person < ApplicationRecord

 #validate name
 validates :name, presence: true, length: { maximum: 255 }

 #validate phone
 validates :phone, length: { maximum: 255 }

 #validate address
 validates :address, length: { maximum: 255 }

end
