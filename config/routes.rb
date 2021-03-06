Rails.application.routes.draw do

  resources :bars    #, only: [:show, :index, :new, :create] todo JLW limit if necessary

  get '/' => 'pages#index', :as => :root
  get '/pages/pictures' => 'pages#pictures'
  # get '/bars/index' => 'bars#index'

  namespace :api do 
    resources :bars, only: [:index, :show]
  end

  get '/about' => 'pages#about' do
  end

    get '/demo' => 'pages#demo' do
  end
end
