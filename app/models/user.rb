class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true
end

class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: {maximum: 140 }
  validates :content, presence: { message: "All fields are required."}
end
