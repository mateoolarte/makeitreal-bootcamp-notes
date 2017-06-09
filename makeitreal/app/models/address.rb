class Address < ApplicationRecord
  belongs_to :user

  validates :oneline, :twoline, length: { maximum: 50 }
  validates :oneline, :zip, presence: true
  validates :zip, length: { maximum: 10 }
  validates :country, length: { is: 2 }
end
