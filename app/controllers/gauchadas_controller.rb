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
    @comentarios = Comentario.new
    @answer = Answer.new
  end

  def new
   @gauchada = Gauchada.new
  end

  def republicar
    @gauchada = Gauchada.find(params[:id])
    @gauchada.postulacions.all.each do |postu|
      postu.destroy
    end
    redirect_to  index3Gauchada_path
  end

  def devolver_puntos
    @gauchada = Gauchada.find(params[:id])
    @gauchada.destroy
    current_user.puntos = (current_user.puntos + 1) #Sumo 1 punto por eliminar gauchada no cumplida
    current_user.save       #Guardo el usuario con el campo de puntos modificado
    redirect_to root_url
  end

  def create
   @gauchada = Gauchada.new(gauchada_params)
   @gauchada.user_id = current_user.id
   if @gauchada.save
     flash[:notice] = 'La Gauchada se creó exitosamente!'
     current_user.puntos = (current_user.puntos - 1) #Resto 1 punto por crear nueva gauchada
     current_user.save       #Guardo el usuario con el campo de puntos modificado
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
