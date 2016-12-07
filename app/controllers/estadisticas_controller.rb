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
    @bar = Gchart.pie_3d(:size => '700x400',
    :title  => "Estadisticas Anuales",
    :data => [usu,gaucha,comen,pago,res],
    :labels => ["Usuarios", "Gauchadas", "Comentarios", "Pagos", "Respuestas"] )
  end

  def show2
    @estadistica = Estadistica.find(params[:fecha])
    if @estadistica.fecha == 1
      titulo = "Estadisticas de Enero "
    end
    if @estadistica.fecha == 2
      titulo = "Estadisticas de Febrero "
    end
    if @estadistica.fecha == 3
      titulo = "Estadisticas de Marzo "
    end
    if @estadistica.fecha == 4
      titulo = "Estadisticas de Abril "
    end
    if @estadistica.fecha == 5
      titulo = "Estadisticas de Mayo "
    end
    if @estadistica.fecha == 6
      titulo = "Estadisticas de Junio "
    end
    if @estadistica.fecha == 7
      titulo = "Estadisticas de Julio "
    end
    if @estadistica.fecha == 8
      titulo = "Estadisticas de Agosto "
    end
    if @estadistica.fecha == 9
      titulo = "Estadisticas de Septiembre "
    end
    if @estadistica.fecha == 10
      titulo = "Estadisticas de Octubre "
    end
    if @estadistica.fecha == 11
      titulo = "Estadisticas de Noviembre  "
    end
    if @estadistica.fecha == 12
      titulo = "Estadisticas de Diciembre  "
    end
    @bar = Gchart.pie_3d(:size => '700x400',
    :title  => "Estadisticas Anuales",
    :data => [@estadistica.usuario,@estadistica.cant1,@estadistica.comentarios,@estadistica.pagos,@estadistica.respuestas],
    :labels => ["Usuarios", "Gauchadas", "Comentarios", "Pagos", "Respuestas"] )
  end
end
