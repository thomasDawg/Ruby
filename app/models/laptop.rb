class Laptop < ActiveRecord::Base
  has_attached_file :image
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment :image, presence: true,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "image/jpg"] }

end
