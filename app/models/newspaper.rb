class Newspaper < ApplicationRecord
  has_many_attached :photos, dependent: :destroy
end
