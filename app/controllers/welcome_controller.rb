class WelcomeController < ApplicationController
  def index
  	# BAD - slow response time
  	# @animals = Animal.all

  	# BEST PRACTICE
  	@animals = Animal.paginate(page: params[:page], per_page: 10)
  end
end
