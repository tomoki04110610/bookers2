class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: ture
  validates :body, presence: ture
end
