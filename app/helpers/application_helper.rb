module ApplicationHelper
  def friendly_age(birthdate)
    years_old = Date.today - birthdate 
    years_and_months = years_old.divmod(365)
    years = years_and_months[0]
    months = years_and_months[1] / 30
    puts "#{years} years #{months} months"
  end
end
