class Car < ApplicationRecord
  has_and_belongs_to_many :dealerships

  validates_presence_of :make
  validates_presence_of :price

  def new?
    return self.new
  end

  def used?
    return !self.new
  end
end
