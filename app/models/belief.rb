class Belief
  include Mongoid::Document

  field :life_area, type: String
  field :text, type: String
  field :source, type: String
  field :entry_date, type: Date

  validates :life_area, length: { minimum: 1 }
  validates :text, length: { minimum: 1 }
end
