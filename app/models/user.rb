class User < ApplicationRecord
  has_many :microposts
end

class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: {maximum: 140 }
  validates :content, presence: { message: "All fields are required."}
  validates :name, presence: { message: "All fields are required."}
  validates :email, presence: { message: "All fields are required."}
end
