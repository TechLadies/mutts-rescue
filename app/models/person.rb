class Person < ApplicationRecord

 #validate name
 validates :name, presence: true, length: { maximum: 255 }

 #validate phone
 validates :phone, length: { maximum: 255 }

 #validate email
 validates :email, length: { maximum: 255 }

#validate bank account
 validates :bank_acct, length: { maximum: 255 }

 #validate address
 validates :address, length: { maximum: 255 }

end
