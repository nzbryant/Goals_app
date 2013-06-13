class Goal
  include Mongoid::Document
  
  field :life_area, type: String
  field :target_date, type: Date
  field :text, type: String
  field :strategy, type: String

  embedded_in :user, :inverse_of => :goals  

  validates :life_area, length: { minimum: 1 }
  
  validates :target_date, length: { minimum: 1 }
  #:format => { :with => /\d{2}\/\d{2}\/\d{4}/,
   # :message => "Not a valid date" }
	
	validates :text, length: { minimum: 1 }
  

end
