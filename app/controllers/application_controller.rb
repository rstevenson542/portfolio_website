class ApplicationController < ActionController::Base
  protect_from_forgery
 
  def contact
    @contact = Contact.new(params[:contact])
    @contact.save
  end

end
