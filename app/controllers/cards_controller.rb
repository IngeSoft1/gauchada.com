class CardsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @card = Card.new
  end

  def destroy
  end

  def create
    @card = Card.new(card_params)
    email = @card.email_usuario
    usuario = current_user.id
    numero = @card.numero
if @card.save
    @card.destroy
    Card.all.each do |tarjeta|
      if (tarjeta.email_usuario == email)
        if(tarjeta.usuario_id == usuario)
            if(tarjeta.numero == numero)

                  flash[:notice] = 'Se realizo la compra de puntos satifactoriamente'
                  redirect_to root_path
            else
              flash[:notice] = 'no se realizo la compra de puntos satifactoriamente'
              end
      end
    end
    end
  end
  end


  def card_params
    params.require(:card).permit(:numero, :email_usuario,:usuario_id)
  end
end
