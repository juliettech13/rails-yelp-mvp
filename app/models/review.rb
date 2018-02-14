class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :rating, presence: true, :numericality => true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, :allow_blank => false, presence: true
end
