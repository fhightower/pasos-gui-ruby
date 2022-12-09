class PasosController < ApplicationController
  def index
    @pasos = Paso.all
  end

  def show
    @paso = Paso.find(params[:id])
  end

  def new
    @paso = Paso.new()
  end

  def create
    @paso = Paso.new(paso_params)

    if @paso.save
      redirect_to @paso
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @paso = Paso.find(params[:id])
  end

  def update
    @paso = Paso.find(params[:id])

    if @paso.update(paso_params)
      redirect_to @paso
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @paso = Paso.find(params[:id])
    @paso.destroy

    redirect_to pasos_path, status: :see_other
  end

  private

  def paso_params
    params.require(:paso).permit(:day, :destination)
  end
end

