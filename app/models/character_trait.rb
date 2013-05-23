class CharacterTrait
  include Mongoid::Document
  
  field :text, type: String
 
 # embedded_in :user
  
  validates :text, length: { minimum: 1 }

end
