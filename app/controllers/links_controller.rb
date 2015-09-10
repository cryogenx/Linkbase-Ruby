class LinksController < ApplicationController
	before_action :authenticate_user!

	def index
  	
	end

	def show
		
	end

	def new
		@link = Link.new
	end

	def create
		@link = current_user.links.create(link_params)
		if @link.invalid?
			flash[:error] = '<strong>Could not Save</strong> the data entered is invalid.'
		end
		redirect_to dashboard_path
	end

	def edit
    @link = Link.find(params[:id])

    if @link.user != current_user
      return render :text => 'You are not allowed to edit another users link', :status => :forbidden
    end
  end

  def update
    @link = Link.find(params[:id])

    if @link.user != current_user
      return render :text => 'You are not allowed to update another users link', :status => :forbidden
    end

    @link.update_attributes(link_params)
    if @link.valid?
      redirect_to root_path
    else
      render :edit, :status => :unprocessable_entity
    end
  end

	def destroy
	    @link = Link.find(params[:id])
	    if @link.user != current_user
	      return render :text => 'You are not allowed to DELETE another users link', :status => :forbidden
	    end

	    @link.destroy
	    redirect_to dashboard_path
  	end

	private

	def link_params
		params.require(:link).permit(:name, :url, :window, :user_id, :category_id)
	end

end
