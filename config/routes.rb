Rails.application.routes.draw do
  root 'post_images#index'

  devise_for :users
  
  resourse :post_images, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
