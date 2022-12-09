class PasosController < ApplicationController
  def index
    @pasos = Paso.all
  end
end
