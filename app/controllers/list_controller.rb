class ListController < ApplicationController
  def index
  	@lists = List.where(:member_id => current_member.id)
  end
end
