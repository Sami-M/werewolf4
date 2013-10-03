class Game < ActiveRecord::Base
  attr_accessible :interval, :start
  has_many :users, dependent: :destroy
end
