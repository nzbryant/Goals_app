class ActionHabit
  include Mongoid::Document

  field :text, type: String

  validates :text, length: { minimum: 1 }
  embedded_in :user
  
end
