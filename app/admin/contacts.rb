ActiveAdmin.register Contact do
  
  index do
      column :name
      column :email
      column :phone
      column :budget do |contact|
        number_to_currency contact.budget
      end
      column :description
  end
end
