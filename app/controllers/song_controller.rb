class SongController < ApplicationController
  def index
  	@songs = Song.all

  end

  def play
  	@list = List.create(member_id: current_member.id, song_id: params[:foo])
    @list.fav = 0
    
    if @list.valid?
  		@time = Timetable.new
      @time.playtime = Time.now.localtime
  		@time.list = @list
     	@time.save
    end
  end


end
