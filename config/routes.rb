Rottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :reviews
  end

  resources :moviegoers do
    resources :reviews
  end
  
  #resources :reviews
  #resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'

  get  'auth/:provider/callback' => 'sessions#create'
  get  'auth/failure' => 'sessions#failure'
  get  'auth/facebook', :as => 'login'
  post 'logout' => 'sessions#destroy', :as => 'signout'
  get  'login' => 'moviegoers#login', :as => 'login_page'
end
