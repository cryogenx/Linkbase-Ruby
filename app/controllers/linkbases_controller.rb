class LinkbasesController < ApplicationController


	
	def show
		@no_nav = true
		@linkbase_user = User.find_by(:share_key => params[:share_key])
	end
end

