class WelcomeController < ApplicationController
  def index
  	#BAD - Slow response time
  	#@animals = Animal.all
  	@animals = Animal.paginate(page: params[:page], per_page: 10)
  end
end
