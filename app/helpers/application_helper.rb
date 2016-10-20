module ApplicationHelper
  def friendly_age(birthdate)
    years_old = Date.today - birthdate
    years_and_months = years_old.divmod(365)
    years = years_and_months[0]
    months = years_and_months[1] / 30
    months_i = months.to_i
    if months_i < 1
      friendly_age = "#{years} years"
    elsif years < 1
      friendly_age = "#{months_i} months"
    else
      friendly_age = "#{years} years #{months_i} months"
    end
  end
end
