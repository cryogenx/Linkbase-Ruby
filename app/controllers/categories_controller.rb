class CategoriesController < ApplicationController
	before_action :authenticate_user!

	def index
  		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = current_user.categories.create(category_params)
		if @category.invalid?
			flash[:error] = '<strong>Could not Save</strong> the data entered is invalid.'
		end
		redirect_to dashboard_path
	end

	private

	def category_params
		params.require(:category).permit(:name, :comment, :user_id)
	end


end
