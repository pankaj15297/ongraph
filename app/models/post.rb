class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_one_attached :image
  belongs_to :user
  validates_format_of :image,presence: true, :with => %r{\.(png|jpg|jpeg)}i, :message => "only .jpg .jpej ang .png"
end
