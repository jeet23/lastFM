class SongController < ApplicationController
  def index
  	@songs = Song.all
    if current_member
    @hash = Hash.new
    @b = List.where(:member_id => current_member.id)
    @b.each do |m|
      @hash[m.song_id] = m.fav
    end
  end

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
