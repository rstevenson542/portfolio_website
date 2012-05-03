class Portfolio < ActiveRecord::Base

has_attached_file :photo, :styles => { :medium => "224x125#",
                                       :large => "295x166#"
                                       }
end
