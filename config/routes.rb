Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  resources :authors, only: [:show, :index] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  root 'posts#index'

end
