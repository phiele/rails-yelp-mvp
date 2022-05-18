class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese japanese italian french belgian]
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
