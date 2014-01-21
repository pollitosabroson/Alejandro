class CategoriasController < ApplicationController
  # def index
  #   @categorias = Categoria.all.order('created_at DESC')
  # end
  def show
    @categorias = Categoria.all.order('created_at DESC')
  end
  def new
    @categorias = Categoria.new
  end
  def create
    @categorias = Categoria.new params_categoria
    if @categorias.save
      redirect_to new_blog_path
    else
      render :new
    end
  end
  def edit
    @categorias = Categoria.find params[:id]
  end
  def update
    @categorias = Categoria.find params[:id]
    if @categorias.update_attributes params_categoria
      redirect_to new_blog_path
    else
      render :new
    end
  end
  def params_categoria
    params.require(:categoria).permit(:categoria)
  end
  def destroy
    Categoria.delete params[:id]
  end
end
