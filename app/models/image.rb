class Image < ApplicationRecord
  validates :url, presence: true

  belongs_to :challenge
end
