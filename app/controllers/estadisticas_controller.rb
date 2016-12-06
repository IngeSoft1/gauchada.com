class EstadisticasController < ApplicationController
  def index1

  end

  def index2
  end

  def show
    usu = 0
    res = 0
    comen= 0
    pago = 0
    gaucha = 0
    Estadistica.all.each do |estadi|
        usu = usu + estadi.usuario
        res = res + estadi.respuestas
        comen = comen + estadi.comentarios
        pago = pago + estadi.pagos
        gaucha = gaucha + estadi.cant1
    end
    @bar = Gchart.pie(:size => '500x400',:title  => "Futuras Estadisticas",:legend => ['Usuarios','Gauchadas' ,'Comentarios', 'Pagos realizados', 'respuestas'],:custom => "chp=0.628",:data => [usu,gaucha,comen,pago,res])
  end

  def show2
    @estadistica = Estadistica.find(params[:id])
    if @estadistica.id == 36
      titulo = "Estadisticas de Enero "
    end
    if @estadistica.id == 37
      titulo = "Estadisticas de Febrero "
    end
    if @estadistica.id == 38
      titulo = "Estadisticas de Marzo "
    end
    if @estadistica.id == 39
      titulo = "Estadisticas de Abril "
    end
    if @estadistica.id == 40
      titulo = "Estadisticas de Mayo "
    end
    if @estadistica.id == 41
      titulo = "Estadisticas de Junio "
    end
    if @estadistica.id == 42
      titulo = "Estadisticas de Julio "
    end
    if @estadistica.id == 43
      titulo = "Estadisticas de Agosto "
    end
    if @estadistica.id == 44
      titulo = "Estadisticas de Septiembre "
    end
    if @estadistica.id == 45
      titulo = "Estadisticas de Octubre "
    end
    if @estadistica.id == 46
      titulo = "Estadisticas de Noviembre  "
    end
    if @estadistica.id == 47
      titulo = "Estadisticas de Diciembre  "
    end
    @bar = Gchart.pie(:size => '500x400',:title  => titulo,:legend => ['Usuarios','Gauchadas' ,'Comentarios', 'Pagos realizados', 'Respuestas'],:custom => "chp=0.628",:data => [@estadistica.usuario,@estadistica.cant1,@estadistica.comentarios,@estadistica.pagos,@estadistica.respuestas])
  end
end
