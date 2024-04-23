class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: ture, length: {maximum:200}
end
