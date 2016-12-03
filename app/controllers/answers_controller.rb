class AnswersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.usuario_id = current_user.id
    if @answer.save
      flash[:notice] = "Se realizo una Respuesta"
      redirect_to :back
    end
  end

  def answer_params
      params.require(:answer).permit(:res, :comentario_id, :user_id)
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
