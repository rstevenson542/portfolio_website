ActiveAdmin.register Portfolio do
  form :html => { :enctype => "multipart/form-data" } do |f|
     f.inputs "Details" do
      f.input :photo, :hint => f.template.image_tag(f.object.photo.url(:thumb))
      f.input :title
      f.input :context #short summary for the index page
      f.input :description #description of the project, funtionality, purpose, goals, etc
      f.input :services #what you contributed to the project
      f.input :github #githup url
      f.input :tools
  end
  f.buttons
  end
  index do
      column :title do |portfolio|
        link_to portfolio.title, [:admin, portfolio] #links to the specific contact on the admin page, same as (admin_contact_path(contact))
      end
      column :context
      column :description
  end
  
end
