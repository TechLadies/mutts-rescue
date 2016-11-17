module ApplicationHelper

  def friendly_age(birthdate)
    years_old = Date.today - birthdate 
    years_and_months = years_old.divmod(365)
    years = years_and_months[0]
    months = (years_and_months[1] / 30).to_i
    friendly_age = " #{years} years #{months} months"
    friendly_age.
      gsub(" 0 years ", "").
      gsub(" 0 months", "")
  end

def yesno(input)
  if input == true || input == "true"
    return "Yes"
  elsif 
    input == false || input == "false"
    return "No"
  else
    return input
  end
end

def onephoto(image_urls)
  spliturl = image_urls.split","
  return spliturl.first
end


end

