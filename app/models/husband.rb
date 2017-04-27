class Husband < ApplicationRecord
  validates :title, presence: true

  validates :age, presence: true
  validates :salary, presence: true
  validates :city, presence: true
  validates :salary, numericality: { greater_than: 0 }
end
