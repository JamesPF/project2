class TourdateController < ApplicationController

  def index
  	@tourdates = Tourdate.all
  end

  def new
  	@tourdate = Tourdate.new
  end

  def new_tourdate
  	@tourdate = Tourdate.new(tourdate_params)

  	if @tourdate.save
  		redirect_to tourdate_path
  	else
  		redirect_to @tourdate, notice: 'There was an error creating tour dates.'
  	end
  end

  def tourdate_params
  	params.require(:tourdate).permit(:date, :city, :venue, :time)
  end

end