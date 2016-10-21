module ApplicationHelper

def age(born_on)
    now = Date.current
    ageyear=now.year - born_on.year
    agemonth=now.month - born_on.month
    age_year=ageyear.to_i
    age_month=agemonth.to_i
    if age_month < 0
      age_year = age_year - 1
      age_month = age_month + 12
    end
    if age_month < 1
      age = "#{age_year} years"
    elsif age_year < 1
      age = "#{age_month} months"
    else
      age="#{age_year} years and #{age_month} months"
    end
  end

end
