class Player < ApplicationRecord
  has_many :roster_spots
  has_many :teams, through: :roster_spots
  has_many :touchdowns

  def score_touchdown(opts={})
    touchdown = Touchdown.new(opts)
    touchdown.player = self
    touchdown.save
  end
end
