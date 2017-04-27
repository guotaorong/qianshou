class Jianli < ApplicationRecord
  belongs_to :user
  belongs_to :husband

  validates :content, presence: true

  mount_uploader :fujian, FujianUploader

end
