class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :relationships
  has_many :likeds, through: :relationships, source: :user
end
