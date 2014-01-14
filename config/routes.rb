Alejandro::Application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  get "categorias/index"
  get "blogs/index"
  root :to => "paginas#home"
end
