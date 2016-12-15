Rails.application.routes.draw do
resources :estadisticas
  get 'mostrarListaEstadisticas', to:'estadisticas#index1'

  get 'estadisticas/index2'

  get 'mostrarEstadisticas', to:'estadisticas#show'
  get 'mostrarEstadisticas2', to:'estadisticas#show2'
  get 'mostrarEstadisticas3', to:'estadisticas#show3'	
resources :notifications
  get 'mostrarNotificaciones' , to:'notifications#index'

  get 'notifications/create'

  get 'notifications/index'

  get 'nuevaNotificacion' , to:'notifications#new'

  get 'notifications/update'

  get 'eliminarNotificacion',to:'notifications#destroy'

#rutas de tarjeta de credio
resources :cards
  get 'cards/index'

  get 'cards/show'

  get 'realizaPago' ,to:'cards#new'

  get 'cards/destroy'

  get 'cards/create'
#ruta de tarjeta de credito
resources :answers
  get 'answers/index'

  get 'answers/show'

  get 'answers/new'

  get 'answers/create'

  get 'answers/destroy'

  get 'answers/edit'

  get 'answers/update'


  resources :serchs
  resources :charges
  resources :logros
  resources :postulacions
  resources :gauchadas do
    collection do
      get :lugar
      get :titulo_descripcion
    end
  end
  resources :comentarios
#rutas de los comentarios
  get 'comentarios/index'

 get 'comentarios/show'

 get 'comentarios/new'

 get 'comentarios/create'

 get 'eliminarComentario', to:'comentarios#destroy'

 get 'comentarios/update'


  #rutas de las gauchadas
  get 'gauchada/index'
  get '/detallesGauchada', to:'gauchadas#show'

  get 'informacionContacto', to:'gauchadas#show2'

   get '/nuevaGauchada', to:'gauchadas#new'

   get '/eliminarGauchada', to:'gauchadas#destroy'

   get '/index2Gauchada', to:'gauchadas#index2'

   get '/index3Gauchada', to:'gauchadas#index3'

   get '/republicarGauchada', to:'gauchadas#republicar'

   get '/devolverPuntosGauchada', to:'gauchadas#devolver_puntos'

   #rutas de las postulaciones

  get '/listadoPostulacions', to:'postulacions#index'

  get '/nuevoPostulacion', to:'postulacions#new'

  get '/editarPostulacion', to:'postulacions#edit'

  get '/eliminarPostulacion', to:'postulacions#destroy'

  get '/aceptarPostulacion', to:'postulacions#aceptar'

  get '/cumplimientoPostulacion', to:'postulacions#cumplimiento'

  get '/inCumplimientoPostulacion', to:'postulacions#inCumplimiento'

#rutas de los logros

  get '/listadoLogros', to:'logros#index'

  get '/nuevoLogro', to:'logros#new'

  get '/editarLogro', to:'logros#edit'

  get '/eliminarLogro', to:'logros#destroy'

#rutas de device
  devise_for :users
  root 'gauchadas#index'
  get '/nuevoMonstruo', to:'monstruos#new'
  get '/listadoMonstruos', to:'monstruos#index'

  get '/aboutMain', to:'main#about'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
