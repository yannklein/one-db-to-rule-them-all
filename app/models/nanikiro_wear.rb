class NanikiroWear < ApplicationRecord
  belongs_to :nanikiro_closet
  has_one_attached :photo
end
