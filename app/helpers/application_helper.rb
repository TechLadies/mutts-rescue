module ApplicationHelper
<<<<<<< HEAD

=======
>>>>>>> 790af910c1ff22a82e380f5f79099eba28183e21
  def friendly_age(birthdate)
    years_old = Date.today - birthdate 
    years_and_months = years_old.divmod(365)
    years = years_and_months[0]
    months = (years_and_months[1] / 30).to_i
<<<<<<< HEAD
    friendly_age = " #{years} years #{months} months"
=======
    friendly_age = "#{years} years #{months} months"
>>>>>>> 790af910c1ff22a82e380f5f79099eba28183e21
    friendly_age.
      gsub(" 0 years ", "").
      gsub(" 0 months", "")
  end

<<<<<<< HEAD


end

=======
def make_list(header, items)
  html = ""
  html << "<h1>#{header}</h1>"
  html << '''
  <div class ="container-fluid text-center/">
  '''
  html << "<ul>"

  items.each do |item|
    html << "<li>#{item}</li>"
  end

  html << "</ul>"

  return html
end

end

>>>>>>> 790af910c1ff22a82e380f5f79099eba28183e21
