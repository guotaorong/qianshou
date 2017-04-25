class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :wife

  validates :content, presence: true

  mount_uploader :attachment, AttachmentUploader
end
