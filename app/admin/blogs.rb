ActiveAdmin.register Blog do
  
  index :as => :blog do
      title :title
      body :post # Return value of #my_body will be the body
    end
    
end
