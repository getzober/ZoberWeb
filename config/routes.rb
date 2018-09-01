Rails.application.routes.draw do

  root to: 'home_page#index'

  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations", omniauth_callbacks: "users/omniauth_callbacks"}

  get 'sitemap/index'

  get 'index' => 'dashboard#index'

  mount Ckeditor::Engine => '/ckeditor'
  resources :purchases, only: [:show]
  resources :products, only: [:index, :show]

  resources :topics, only: [:show]
  resources :houses, :users, :only => [:new, :create, :index, :show]
  resources :blogs do
    resources :comments
  end

  get 'blogs/by_year_and_month/:year/:month' => 'blogs#by_year_and_month', :as=> :blogs_by_year_and_month
  match 'sitemap', :to => 'sitemap#index', :via => [:get]
  get 'topics/:id' => 'topics#show'
  get 'privacy' => 'static#privacy'
  get 'list' => 'houses#list'
  get 'terms'=>'static#terms'
  get 'provider-markers' => 'places#index'
  get 'company' => 'static#company'
  get 'individual' => 'houses#individual'

  get 'houses/home'
  get 'houses/:id' => 'houses#show'


  get 'about' => 'static#about'
  get 'contact' => 'static#contact'

  namespace :api do
    namespace :v1 do
      get '/houses' => 'houses#index'
      get '/houses/:id' => 'houses#show'
      get '/images' => 'images#index'
    end
  end

end
