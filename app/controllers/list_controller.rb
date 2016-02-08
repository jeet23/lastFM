class ListController < ApplicationController
  def index
  	@lists = List.where(:member_id => current_member.id)
  	@lists = @lists.order("updated_at DESC")
  end
end
