Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'top/index'
  root 'top#index'

  # get 'list/new'
  # post 'list/create'
  # resources :list, only: %i(new create)
  # resources :list, only: %i(new create edit update)
  # resources :list, only: %i(new create edit update destroy)
  resources :list, only: %i(new create edit update destroy) do
    # resources :card, only: %i(new create show edit update destroy)
    # 上記のアクションでindexだけ使っていないので、indexを除いたアクションを生成するような記述もできる
    resources :card, except: %i(index)
  end
end
