class Book < ApplicationRecord
  belongs_to :author, optional: true

  validates :title, presence: true
  validates :title, uniqueness: { scope: :author }
end
