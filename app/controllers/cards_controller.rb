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
    id_cv = 4444

    if @card.save
      @card.destroy
      Card.all.each do |tarjeta|
          if (email == tarjeta.email_usuario)
            ema = true
            id_email = tarjeta.id
          end
          if (cv == tarjeta.cv)
            cv_veri = true
            id_cv = tarjeta.id
          end
          if (numero == tarjeta.numero)
            num = true
            id_num = tarjeta.id
          end
      end
    end

listo = false
if (id_email == id_num) && (id_cv == id_email)
                flash[:notice] = 'Se realizo la compra de puntos satifactoriamente'
                usua = User.find(usuario)
                usua.puntos = usua.puntos + 1
                usua.save
                num = false
                ema = false
                listo = true
                redirect_to root_path
end

if (ema) && (listo ==false)
      redirect_to realizaPago_path
      flash[:alert] = 'El numero de tarjeta es incorrecto'
      listo = true
end
if num && (listo ==false)
  redirect_to realizaPago_path
  flash[:alert]= 'El Email ingersado es incorrecto'
  listo = true
end
if cv_veri && (listo ==false)
  redirect_to realizaPago_path
  flash[:alert]= 'El CV ingersado es incorrecto'
  listo = true
end
if (ema == false) && (num == false)
  if(cv_veri == false)
      redirect_to :back
      flash[:alert]= 'Los campos ingresado son incorrectos'
    end
end


end



  def card_params
    params.require(:card).permit(:numero, :email_usuario,:usuario_id)
  end
end
