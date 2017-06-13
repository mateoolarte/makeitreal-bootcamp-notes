class Address < ApplicationRecord
  belongs_to :user

  validates :oneline, :twoline, length: { maximum: 50 }
  validates :oneline, :zip, presence: true
  validates :zip, length: { maximum: 10 }
  validates :country, inclusion: { in: %w(co us) }, length: { is: 2 }
  validates :state, presence: true, if: :us?

  def us?
    country == "us"
  end
end
