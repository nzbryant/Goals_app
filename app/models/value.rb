class Value
  include Mongoid::Document
  
  field :life_area, type: String
  field :text, type: String

  embedded_in :user
  

  validates :life_area, length: { minimum: 1 }
  validates :text, length: { minimum: 1 }

end
