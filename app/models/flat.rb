class Flat < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :photo, presence: true
end
