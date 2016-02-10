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

  def calculate
    @a = List.where(:member_id => current_member.id, :song_id => params[:foo1])
   
    @a.each do |u|
      if u.fav
        u.fav = 0
      else
        u.fav = 1
      end
     
      
      @check1 = u.song_id
      u.save
    end 
    @hash = Hash.new
    @b = List.where(:member_id => current_member.id)
    @b.each do |m|
      @hash[m.song_id] = m.fav
    end

   respond_to :js


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
