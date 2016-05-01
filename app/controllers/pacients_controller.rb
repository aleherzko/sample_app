class PacientsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_pacient, only: [:show, :edit, :update, :destroy]

  def index
	@pacients = Pacient.all
  end
  
  def new
	@pacient = Pacient.new
  end
  
  def create
	@pacient = Pacient.new(pacient_params)
	
	if @pacient.save
		redirect_to @pacient
	else
		render 'new'
	end
  end
  
  def show
	
  end
  
  def edit
	
  end
  
  def update
	if @pacient.update(pacient_params)
		redirect_to @pacient
	else
		render 'edit'
	end	
  end
  
  def destroy
	@pacient.destroy!
	redirect_to root_path, :notice => "El Paciente ha sido eliminado"
  end
  
  private
 
  def find_pacient
	@pacient = Pacient.find(params[:id])
  end
 
  def pacient_params
	params.require(:pacient).permit(:fname, :lname)
  end
  
end