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
    cv = @card.cv
    nom= @card.nombre
    cv_veri = false
    num = false
    ema = false
    id_email = 0
    id_num = 9999

    if @card.save
      @card.destroy
      Card.all.each do |tarjeta|
          if (email == tarjeta.email_usuario)
            ema = true
            id_email = tarjeta.id
          end
          if (cv == tarjeta.cv)
            cv_veri = true
          end
          if (numero == tarjeta.numero)
            num = true
            id_num = tarjeta.id
          end
      end
    end

    if (id_email == id_num)
                flash[:notice] = 'Se realizo la compra de puntos satifactoriamente'
                usua = User.find(usuario)
                usua.puntos = usua.puntos + 1
                usua.save
                num = false
                ema = false
                redirect_to root_path
    end

    if (ema)
      redirect_to realizaPago_path
      flash[:alert] = 'El numero de tarjeta es incorrecto'
    end
    if num
      redirect_to :back
      flash[:alert]= 'El Email ingersado es incorrecto'
    end
    if cv_veri
      redirect_to :back
      flash[:alert]= 'El CV ingersado es incorrecto'
    end
    if (ema == false) && (num == false) && (cv_veri == false)
      redirect_to :back
      flash[:alert]= 'Los campos ingresado son incorrectos'
    end

end



  def card_params
    params.require(:card).permit(:numero, :email_usuario,:usuario_id)
  end
end
