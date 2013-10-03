class User < ActiveRecord::Base
  attr_accessible :game_id, :name, :password, :player, :user_id
  belongs_to :game
  has_one :player
end
