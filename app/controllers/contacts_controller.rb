class ContactsController < ApplicationController
  
  def index
     @contacts = Contact.all
   end

   def new
     @contact = Contact.new
   end

   def create
     @contact = Contact.new(params[:contact])
     if @contact.save
       # Tell the ContactMailer to send the contact_email after save
       ContactMailer.contact_email(@contact).deliver
       
       redirect_to root_url, notice: "Contact was successfully created"
     else
       render action:"new"
     end
   end

   def show
     @contact = Contact.find(params[:id])
   end

   def edit
     @contact = Contact.find(params[:id])
   end

   def destroy
     @contact = Contact.find(params[:id])
     @contact.destroy
   end
  
end