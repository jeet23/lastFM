class SongController < ApplicationController
  def index
  	@songs = Song.all
  end

  def play
  	render 'play'
  end
end
