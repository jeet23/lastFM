class TimetableController < ApplicationController
  def index
  
     @tests = List.joins(:timetable).where(:member_id => current_member.id).group(:song_id).count
     @tests1 = List.joins(:timetable).where(:member_id => current_member.id).group(:song_id)

    @hash = Hash.new
    @b = List.where(:member_id => current_member.id)
    @b.each do |m|
    @hash[m.song_id] = m.fav
    end


  end

  

  def sort

  		@a = params[:sort_id]
  		if @a == "1"
  			@time = Time.now.utc - 1.hour
  		elsif @a == "2"
  			@time = Time.now.utc - 6.hour
  		elsif @a == "3"
  			@time = Time.now.utc - 1.day
  		elsif @a == "4"
  			@time = Time.now.utc - 1.month
  		else
  			@time = Time.now.utc - 1.year
  		end 

  	@finals = List.joins(:timetable).where(:member_id => current_member.id).where(Timetable.table_name + ".playtime > ?",@time)
	  @finals1 = List.joins(:timetable).where(:member_id => current_member.id).where(Timetable.table_name + ".playtime > ?",@time).select("playtime").map(&:playtime)

  end
end
