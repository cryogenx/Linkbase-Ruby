class Link < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

	validates :user, :category, presence: true

	WINDOW_CHOICES = { 
	    "New Window" => "_blank",
	    "Same Window" => "_self",
  	}

end
