class RecordsController < ApplicationController
  def new
  	@record = Record.new 
  end

  def create
  	@record = Record.new(params[:record])
  	if @record.save
  		flash.now[:sucess] = "record saved to database"
  	else
  		flash.now[:error] = "error while saving"	
  	end
    redirect_to new_record_path
	end

  def home
    
  end
end