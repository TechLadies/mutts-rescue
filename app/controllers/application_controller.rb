class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper FilepickerRails::Engine.helpers
end
