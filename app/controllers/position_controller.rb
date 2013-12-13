class PositionController < ApplicationController

  def show
    lat = params[:lat]
    lng = params[:lng]
    pid = params[:playerid]

    @player = Player.find_by_user_id(params[:playerid])
    @player.lat = lat
    @player.lng = lng

    @player.save

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player }
    end


  end
end