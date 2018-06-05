Rails.application.routes.draw do
  root to: 'home_page#index'
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :controllers
  devise_for :providers
  devise_scope :provider do
    get '/providers/:id' => 'providers#show'
  end
  devise_for :admin, path: 'admin', controllers: {sessions: "admin/sessions", registrations: 'admin/registraions'}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations"}

  get 'sitemap/index'
  get 'index' => 'dashboard#index'

  resources :charges
  resources :places,    except: [:update, :edit, :destroy]
  resources :purchases, only: [:show]
  resources :products,  only: [:index, :show]
  resources :topics,    only: [:show]
  resources :houses,    only: [:new, :create, :index]
  resources :users,     only: [:new, :create, :index]

  resources :blogs do
    resources :comments
  end

  namespace :api do
    namespace :v1 do
      get '/houses'     => 'houses#index'
      get '/houses/:id' => 'houses#show'
      get '/images'     => 'images#index'
    end
  end

  get 'blogs/by_year_and_month/:year/:month' => 'blogs#by_year_and_month', as: :blogs_by_year_and_month
  match 'sitemap', to: 'sitemap#index', via: [:get]
  # match '/providers/:id',     to: 'providers#show',       via: 'get'
  get 'topics/:id' => 'topics#show'
  get 'privacy'    => 'static#privacy'
  get 'list'       => 'houses#list'
  get 'terms'      => 'static#terms'
  get 'company'    => 'static#company'
  get 'individual' => 'houses#individual'

  get 'provider-markers' => 'places#index'
  get 'houses/home'
  get 'houses/:id' => 'houses#show'
  get 'about'      => 'static#about'
  get 'contact'    => 'static#contact'
end
