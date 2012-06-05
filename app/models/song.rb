class Song < ActiveRecord::Base 
  has_attached_file   :audio,
                      :url => "/assets/:class/:id/:attachment/:style.:extension",
                      :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"
  
  belongs_to :user
end
