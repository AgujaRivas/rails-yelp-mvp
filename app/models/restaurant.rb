class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'French', 'belgian'],
                                    message: '%{value} is not a valid category' }
end
