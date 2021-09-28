class PagesController < ApplicationController
  def index
  end
  def create
    project = Projectmodel.new
    project.nombre = params[:name]
    project.estado = params[:state]
    project.descripcion = params[:description]
    project.fecha_inicial = params[:starts_on]
    project.fecha_final = params[:ends_on]
    project.save
  end

  def dashboard
    # @projects = Projectmodel.all 
    if params[:estado].present?
      @projects = Projectmodel.where('estado = ?', params[:estado])
    else 
      @projects = Projectmodel.all
    end
  end
end
