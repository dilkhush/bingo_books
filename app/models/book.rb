class Book < ApplicationRecord
  validates :title, :price, :description, presence: true

  has_many :comments, dependent: :delete_all
end
