class ContactMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def contact_email(contact)
    @contact = contact
    mail(to: rstevenson542@gmail.com, subject: "Website Contact Form")
  end
end
