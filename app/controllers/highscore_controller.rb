class HighScore < ApplicationController

  def show

    @player = Player.find(params[:killerid])

  end
end