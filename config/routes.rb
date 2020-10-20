Rails.application.routes.draw do

  devise_for :users

  root 'post_images#index'

  #親のresourcesに子のresourcesを指定することを「ネストする」という
  #URLがコメント投稿と投稿画像で関連づけられるためユーザにとってわかりやすい
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
