class ComentariosController < ApplicationController
  def index
 end

 def show
 end


 def new
   @comentarios = Comentario.new
end

def create
   @comentarios =  Comentario.new(comentario_params)
   @comentarios.Id_usuario = current_user.id
  if @comentarios.save
    flash[:notice] = 'El comentario se creo exitosamente!'
    redirect_to index3Gauchada_path
  else
    redirect_to index3Gauchada_path
  end
end
def edit
end

def update
end

def destroy
end


def comentario_params
    params.require(:comentario).permit(:coment, :Id_usuario,:Id_gauchada)
end
end
