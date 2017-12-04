class Document < ApplicationRecord
  belongs_to :group
  mount_uploader :attachment, AttachmentUploader
end
