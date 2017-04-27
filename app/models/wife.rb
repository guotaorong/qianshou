class Wife < ApplicationRecord
  validates :title, presence: true

  validates :age, presence: true
  validates :salary, presence: true
  validates :city, presence: true
  validates :salary, numericality: { greater_than: 0 }

  def publish!
    self.is_hidden = false
    save
  end

  def hide!
    self.is_hidden = true
    save
  end

  has_many :resumes

  belongs_to :user

  mount_uploader :image, ImageUploader
end
