class NotificationsController < ApplicationController
  def index
  end

  def new
    @notifications = Notification.new
    @gauchada = Gauchada.find(params[:id])
    @gauchada.destroy
  end

  def notification_params
      params.require(:notification).permit(:texto,:usuario_id,:gauchada_id)
  end

  def create
    @notifications = Notification.new(notification_params)
    if @notifications.save
      flash[:notice] = 'Se Notifico correctamente!'

    end
   redirect_to root_url
  end

  def index
  end

  def update
  end


def destroy
  @notifications = Notification.find(params[:id])
  if @notifications.present?
       @notifications.destroy
       flash[:notice] = 'La notificacion se elimino exitosamente!'
  end
  redirect_to :back
  
  end


end
