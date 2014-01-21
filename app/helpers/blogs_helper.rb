require 'ostruct'
module BlogsHelper
  def stats(id)
    le_post = Blog.find id
    le_tags = le_post.tags;
    le_categorias = Categoria.where(:id => le_post.categoria_id)


    json = {:post => le_post, :categorias => le_categorias, :tags => le_tags}
    
    stats = OpenStruct.new(json)

    return stats
  end
end
