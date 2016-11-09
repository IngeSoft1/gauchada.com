class LogrosController < ApplicationController
  def index
    
  end

  def show
  end

  def new
    @logro = Logro.new
  end

  def create
    @logro = Logro.new(logro_params)
    if @logro.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    @logro = Logro.find(params[:id])
  end

  def logro_params
      params.require(:logro).permit(:nombre, :valor_min, :valor_max)
  end

  def update
   @logro = Logro.find params[:id]
  if @logro.update_attributes (logro_params)
    flash[:notice] = 'El Logro se actualizo exitosamente!'
    redirect_to root_path
  end
end

    def destroy
    end
end
