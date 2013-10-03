class Player < ActiveRecord::Base
  attr_accessible :alive, :lat, :lng, :user_id, :voting, :wolf, :score
  belongs_to :user, dependent: :destroy
end
