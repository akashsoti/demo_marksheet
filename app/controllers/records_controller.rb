class RecordsController < ApplicationController
  def new
  	@record = Record.new 
  end

  def create
  	@record = Record.new(params[:record])
  	if @record.save
  		flash[:sucess] = "record saved to database"
  	else
  		flash[:error] = "error while saving"	
  	end
    redirect_to new_record_path
	end

  def index
   @records = Record.all 
  end

  def home
  end

  def update
    
  end

  def destroy
    record = Record.find(params[:id])
    if record.destroy
      flash.now[:sucess] = "Record deleted successfully"      
      redirect_to records_path
    else
      render 'index'
    end
  end
end