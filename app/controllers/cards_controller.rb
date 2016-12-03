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
    num = false
    ema = false
if @card.save
    @card.destroy
    Card.all.each do |tarjeta|
      if (tarjeta.email_usuario == email)
        if(tarjeta.usuario_id == usuario)
            if(tarjeta.numero == numero)

                  flash[:notice] = 'Se realizo la compra de puntos satifactoriamente'
                  usua = User.find(usuario)
                  usua.puntos = usua.puntos + 1
                  usua.save
                  num = false
                  ema = false
                  redirect_to root_path
            else
                num = true
            end
      end
    else
        ema = true
    end
    end
  end
  if num
      redirect_to :back
      flash[:alert] = 'El numero de tarjeta es incorrecto'
  else
    if ema
      redirect_to :back
      flash[:alert]= 'El Email ingersado es incorrecto'

    end
  end
end



  def card_params
    params.require(:card).permit(:numero, :email_usuario,:usuario_id)
  end
end
