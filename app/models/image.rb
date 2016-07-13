class Image < ApplicationRecord
  validates :url, presence: true

  belongs_to :user
  belongs_to :challenge
end
