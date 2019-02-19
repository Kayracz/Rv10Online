class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :size, presence: true
  validates :color, presence: true
  validates :category, presence: true
  validates :price, presence: true
  # belongs_to :admin

  def self.search(search)
    if search
      where(["name LIKE ?","%#{[search]}%"])
    else
    all
   end
  end
end
