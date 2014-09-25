Rails.application.routes.draw do
  resources :emails do
    get :new_section, on: :member
    get :preview, on: :member
  end
  root 'emails#index'
end
