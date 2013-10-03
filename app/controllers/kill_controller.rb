class KillController < ApplicationController

  def show
    kid = params[:killerid]
    vid = params[:victimid]

    @player = Player.find(params[:killerid])

    if @player.wolf?
      print "You have killed"
      Player.update(vid, :alive => 0 )
      @player.increment!(:score)
    end
  else
      print "You have been killed"

  end
end