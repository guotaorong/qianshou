Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :wives do
    resources :resumes
  end

  resources :husbands do
    resources :jianlis
  end

  namespace :admin do
    resources :wives do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end

  resources :husbands

  namespace :admin do
    resources :husbands do
      resources :jianlis
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
