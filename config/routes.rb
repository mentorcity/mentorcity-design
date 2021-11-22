Rails.application.routes.draw do
  mount Tolk::Engine => '/tolk', :as => 'tolk'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'
end
