Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :libraries do
    resources :sections
  end

  resources :sections do
    resources :books
  end

end
