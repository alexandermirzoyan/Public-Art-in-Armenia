class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :post_image
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def address
    [street, city, zip].compact.join(", ")
  end

  def address_changed?
    street_changed? || city_changed? || zip_changed?
  end
end
