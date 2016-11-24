class PostulacionsController < ApplicationController
  def index

  end

  def show
  end

  def new
    @postulacion = Postulacion.new
    @gauchada = Gauchada.find(params[:id])
  end

  def create
      @postulacion = Postulacion.new(postulante_params)
      @postulacion.user_id = current_user.id

      cumple = true

      Postulacion.all.each do |postu|
         if(@postulacion.user_id == postu.user_id)&&(@postulacion.gauchada_id == postu.gauchada_id)
            flash[:notice] = 'Ya te postulaste para esta gauchada'
            cumple = false
         end
      end
     if(cumple)
       if @postulacion.save
         flash[:notice] = 'Te postulaste correctamente!'
         current_user.postulacion_id = @postulacion.id
         @gauchada = Gauchada.find(@postulacion.gauchada_id)
         @gauchada.postulacion_id = @postulacion.id
         redirect_to root_url
       else
         redirect_to root_url
       end
     else
      redirect_to root_url
     end
    end


  def edit
    @postulacion = Postulacion.find(params[:id])
  end

  def postulante_params
      params.require(:postulacion).permit(:descripcion, :localidad, :gauchada_id)
  end

  def update
   @postulacion = Postulacion.find params[:id]
   nuevoPostulante = Postulacion.new(postulante_params)
   cumple = true

   Postulacion.all.each do |postu|
      if(nuevoPostulante.nombre == postu.nombre)&&(@postulacion.id != postu.id)
         flash[:notice] = 'Ya exite un postulacion con ese nombre'
         cumple = false
      end
      if(nuevoPostulante.valor_min <= postu.valor_max)&&(nuevoPostulante.valor_max >= postu.valor_min)&&(@postulacion.id != postu.id)
        flash[:notice] = 'El puntaje del postulacion se superpone con otro'
        cumple = false
      end
  end

  if(nuevoPostulante.valor_min >= nuevoPostulante.valor_max)
    flash[:notice] = 'El rango de punajes ingresado es inválido'
    cumple = false
  end

  if(cumple)
    if @postulacion.update_attributes (postulante_params)
      flash[:notice] = 'El Postulacion se actualizo exitosamente!'
      redirect_to listadoPostulantes_path
    else
      redirect_to listadoPostulantes_path
    end
  else
   redirect_to listadoPostulantes_path
  end

  end

    def destroy
      @postulacion = Postulacion.find(params[:id])
     if @postulacion.present?
       @postulacion.destroy
       flash[:notice] = 'La Postulacion se elimino exitosamente!'
     end
     redirect_to listadoPostulacions_path
    end
  end
