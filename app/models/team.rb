class Team < ApplicationRecord
  validates :name, :city, presence: true
  has_many :roster_spots
  has_many :players, through: :roster_spots
  has_many :touchdowns, through: :players

  def self.alphabetical_by_city
    order(:city)
  end

  def description
    "#{city} #{name}"
  end


end
