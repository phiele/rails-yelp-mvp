class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  CATEGORIES = %w[chinese japanese italian french belgian turkish]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
