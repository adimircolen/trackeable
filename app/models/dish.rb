class Dish < ApplicationRecord
  belongs_to :chef
  accepts_nested_attributes_for :chef
  delegate :name, to: :chef, prefix: true, allow_nil: true
end
