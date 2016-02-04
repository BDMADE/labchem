class Slider < ActiveRecord::Base
  has_attached_file :image, styles: { medium: '960x200#', small: '230x48#' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
