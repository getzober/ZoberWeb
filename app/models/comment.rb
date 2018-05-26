class Comment < ApplicationRecord
  belongs_to :blog

validates_presence_of :body
mount_uploader :image, ImageUploader
end
