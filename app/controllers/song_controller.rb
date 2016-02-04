class SongController < ApplicationController
  def index
  	@songs = Song.all
  end

  def play
  	@list = List.find_or_create_by(member_id: current_member.id, song_id: params[:foo])

	if @list.valid?
		@time = Timetable.new
    @time.playtime = Time.now
		@time.list = @list
		@time.save
  	end
  end

end
