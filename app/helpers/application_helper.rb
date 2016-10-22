module ApplicationHelper
	
	def friendly_age(birthdate)
		years_old = Date.today - birthdate 
		years_and_months = years_old.divmod(365)
		years = years_and_months[0]
		months = (years_and_months[1] / 30).to_i
		
		if months < 1
	    friendly_age = "#{years} years"
		elsif years < 1
		friendly_age = "#{months} months"
		else
		friendly_age = "#{years} years #{months} months"
		end
	end

	def oldest
		Dog.order(:born_on).first
	end


	def wordiest(quote)
		words = Dog.quote.split.count
	end
end
