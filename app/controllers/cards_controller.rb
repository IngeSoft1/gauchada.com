class CardsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @card = Card.new


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
          if (email == tarjeta.email_usuario) then
            ema = true
            id_email = tarjeta.id
          end
          if (numero == tarjeta.numero) then
            num = true
            id_num = tarjeta.id
          end
      end
    end

listo = false
if (id_email == id_num)  then
                flash[:notice] = 'Se realizo la compra de puntos satifactoriamente'
                usua = User.find(usuario)
                usua.puntos = usua.puntos + 1
                usua.save
                num = true
                ema = true
                listo = true
                redirect_to root_path
end

if (ema == false)
  if(num == false)
      redirect_to :back
      flash[:alert]= 'Los campos ingresado son incorrectos'
      listo = true
end
end

if (ema == false)
  if (listo ==false)
      redirect_to realizaPago_path
      flash[:alert] = 'El Email de tarjeta es incorrecto'
      listo = true
end
end

if (num == false)
  if (listo ==false)
  redirect_to realizaPago_path
  flash[:alert]= 'El numero ingersado es incorrecto'
  listo = true
end
end


end



  def card_params
    params.require(:card).permit(:numero, :email_usuario,:usuario_id)
  end
end
end
