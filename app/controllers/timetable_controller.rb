class TimetableController < ApplicationController
  def index
  	@tables = Timetable.all
  end

end
