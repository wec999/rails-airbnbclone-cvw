class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  has_many :reviews
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true

  def approved
    self.booking = "Aproved"
  end

end
