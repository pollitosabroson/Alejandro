class BlogsController < ApplicationController
  def index
    if params[:tag]
      @posts = Blog.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(5)
    elsif params[:categoria]
      @posts = Blog.where(:categoria_id => params[:categoria]).order('created_at DESC').page(params[:page]).per(5)
    else
      @posts = Blog.order('created_at DESC').page(params[:page]).per(5)
    end
    @ultimos = Blog.last(5)
  end

  def show
    @posts = Blog.find params[:id]
    @ultimos = Blog.last(5)
  end
  def new
    @posts = Blog.new
    @categorias = Categoria.new
  end
  def create
    @posts = Blog.new params_blog
    if @posts.save
      redirect_to blogs_path
    else
      render :new
    end
  end
  def edit
    @posts = Blog.find params[:id]
  end
  def update
    @posts = Blog.find params[:id]
    if @posts.update_attributes params_blog
      redirect_to blogs_path
    else
      render :edit
    end
  end
  def destroy
    
  end
  def params_blog
    params.require(:blog).permit(:content, :title, :extracto, :categoria_id, :tag_list, :imagen, :publicados)
  end
end
