class GauchadasController < ApplicationController
  def index
    @gauchada= Gauchada.all
  end
  def index3
  end
  def index2
    @gauchada = Gauchada.find(params[:id])
  end

  def show
    @gauchada = Gauchada.find(params[:id])
  end

  def new
   @gauchada = Gauchada.new
  end

  def create
   @gauchada = Gauchada.new(gauchada_params)
   @gauchada.user_id = current_user.id
   if @gauchada.save
     flash[:notice] = 'La Gauchada se creó exitosamente!'
     redirect_to root_url
   else
     redirect_to root_url
   end
  end
  def lugar
    @gauchada = Gauchada.lugar(params[:busqueda]).all
    render action: :index
  end
  def titulo_descripcion
    @gauchada =Gauchada.titulo_descripcion(params[:busqueda]).all
    render action: :index

  end
  def update
  end

  def edit
  end
  def gauchada_params
        params.require(:gauchada).permit(:titulo, :imagen , :descripcion ,:ubicacion)
  end

  def destroy
   @gauchada = Gauchada.find(params[:id])
  if @gauchada.present?
   @gauchada.destroy
   flash[:notice] = 'La gauchada se elimino exitosamente!'
   redirect_to  index3Gauchada_path
  else
   redirect_to  index3Gauchada_path
  end
  end
  end
