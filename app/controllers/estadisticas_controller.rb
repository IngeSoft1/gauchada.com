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
    User.all.each do |use|
            usu = usu + 1
    end
    Answer.all.each do |resultado|
          res = res + 1
    end

    Comentario.all.each do |com|
          comen = comen + 1
    end

    Gauchada.all.each do |gau|
          gaucha = gaucha + 1
    end
    numero = %w{ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30}
    num= numero.length
    pagos_generados = rand(num)
    @estadistica = Estadistica.find(4)
    @estadistica.comentarios = comen
    @estadistica.respuestas = res
    @estadistica.usuario = usu
    @estadistica.cant1 = gaucha
    @estadistica.pagos = pagos_generados * 12
    @bar = Gchart.pie_3d(:size => '700x400',
    :title  => "Estadisticas Anuales",
    :data => [usu,gaucha,comen,res],
    :labels => ["Usuarios", "Gauchadas", "Comentarios", "Respuestas"] )
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

def show3
  dia_i = params[:dia_inicio].to_i
  mes_i = params[:mes_inicio].to_i
  año_i = params[:año_inicio].to_i
  dia_f = params[:dia_fin].to_i
  mes_f =  params[:mes_fin].to_i
  año_f = params[:año_fin].to_i
  usu = 0
  res = 0
  comen = 0
  pago = 0
  gaucha = 0

  User.all.each do |use|
    cumpledia=true
    cumplemes=true
    cumpleaño=true
    if  (dia_i > use.created_at.strftime("%d").to_i)
            cumpledia = false
    end

    if( dia_f < use.created_at.strftime("%d").to_i )
           cumpledia = false
    end

    if (mes_i > use.created_at.strftime("%m").to_i)
            cumplemes=false
    end

    if( mes_f < use.created_at.strftime("%m").to_i )
           cumplemes=false
    end
    if ( año_i > use.created_at.strftime("%y").to_i)
           cumpleaño=false
    end
    if(año_f < use.created_at.strftime("%y").to_i )
          cumpleaño=false
    end

    if(cumpledia)
      if(cumpleaño)
        if(cumplemes)
          usu = usu + 1
      end
    end
  end
end

  Answer.all.each do |resultado|
    cumpledia = true
    cumplemes = true
    cumpleaño = true
    if  (dia_i > resultado.created_at.strftime("%d").to_i)
            cumpledia = false
    end
    if (dia_f < resultado.created_at.strftime("%d").to_i)
           cumpledia = false
    end
    if  (mes_i > resultado.created_at.strftime("%m").to_i)
            cumplemes=false
    end
    if (mes_f < resultado.created_at.strftime("%m").to_i)
           cumplemes=false
    end
    if  (año_i > resultado.created_at.strftime("%y").to_i)
           cumpleaño=false
    end
    if (año_f < resultado.created_at.strftime("%y").to_i)
          cumpleaño=false
    end

        if(cumpledia == true)
          if(cumpleaño == true)
            if(cumplemes == true)
              res = res + 1
          end
        end
      end

end

  Comentario.all.each do |com|
    cumpledia=true
    cumplemes=true
    cumpleaño=true
    if  (dia_i > com.created_at.strftime("%d").to_i)

            cumpledia = false
    end

    if( dia_f < com.created_at.strftime("%d").to_i )

           cumpledia = false
    end

    if (mes_i > com.created_at.strftime("%m").to_i)

            cumplemes=false
    end

    if( mes_f < com.created_at.strftime("%m").to_i )

           cumplemes=false
    end
    if ( año_i > com.created_at.strftime("%y").to_i)

           cumpleaño=false
    end
    if(año_f < com.created_at.strftime("%y").to_i )

          cumpleaño=false
    end

    if(cumpledia)
      if(cumpleaño)
        if(cumplemes)
          comen = comen + 1
      end
    end
  end
end

  Gauchada.all.each do |gau|
    cumpledia=true
    cumplemes=true
    cumpleaño=true
    if  (dia_i > gau.created_at.strftime("%d").to_i)
            cumpledia = false
    end

    if( dia_f < gau.created_at.strftime("%d").to_i )
           cumpledia = false
    end

    if (mes_i > gau.created_at.strftime("%m").to_i)
            cumplemes=false
    end

    if( mes_f < gau.created_at.strftime("%m").to_i )
           cumplemes=false
    end
    if ( año_i > gau.created_at.strftime("%y").to_i)
           cumpleaño=false
    end
    if(año_f < gau.created_at.strftime("%y").to_i )
          cumpleaño=false
    end

    if(cumpledia)
      if(cumpleaño)
        if(cumplemes)
          gaucha = gaucha + 1
      end
    end
  end

  end

  numero = %w{ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30}
  num= numero.length
  pagos_generados = rand(num)
  @estadistica = Estadistica.find(4)
  @estadistica.comentarios = comen
  @estadistica.respuestas = res
  @estadistica.usuario = usu
  @estadistica.cant1 = gaucha
  @estadistica.pagos = pagos_generados * 12


  @bar = Gchart.pie_3d(:size => '700x400',
  :title  => "Estadisticas",
  :data => [usu,gaucha,comen,res],
  :labels => ["Usuarios", "Gauchadas", "Comentarios", "Respuestas"] )
  end

end
