Alejandro::Application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  root :to => "paginas#home"
  resources :blogs
  resources :categorias
end
