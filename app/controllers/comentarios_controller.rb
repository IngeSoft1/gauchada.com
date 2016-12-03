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
    redirect_to :back
  else
    redirect_to :back
    end
end
def edit
end

def update
end

def destroy
  @comentarios = Comentario.find(params[:id])
 if @comentarios.present?
   @comentarios.destroy
   flash[:notice] = 'El Comentario se elimino exitosamente junto a sus respuestas'
   redirect_to index3Gauchada_path
 end
end



def comentario_params
    params.require(:comentario).permit(:coment, :Id_usuario,:Id_gauchada)
end
end
