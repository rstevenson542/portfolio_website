module ApplicationHelper
  
  def contact
    @contact = Contact.new(params[:contact])
    @contact.save
  end
  
  def coderay(text)
      text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
        CodeRay.scan($3, $2).div(:css => :class)
      end
  end

end
