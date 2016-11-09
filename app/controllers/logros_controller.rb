class LogrosController < ApplicationController


  def index
  end

  def show
  end

  def new
    @logro = Logro.new
  end

  def create
    @logro = Logro.new(params[:valor_min])
    if @logro.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
    @logro = Logro.find(params[:id])
  end



  def update
   @logro = Logro.find params[:id]

  if @logro.update_attributes params[:logro]
    flash[:notice] = 'The Logro is successfully updated!'
    redirect_to edit_user_path
  end
end

    def destroy
    end
end
