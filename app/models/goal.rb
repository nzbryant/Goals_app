class Goal
  include Mongoid::Document
  
  field :text, type: String
  field :strategy, type: String

  validates :text, length: { minimum: 1 }
end
