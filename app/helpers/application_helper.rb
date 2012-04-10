module ApplicationHelper
  
  def contact
    @contact = Contact.new(params[:contact])
    @contact.save
  end
  

end
