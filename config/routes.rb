Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'



resources :users do
  collection do
    get 'audio_call_1'
    get 'audio_call_2'
    get 'audio_calling_1'
    get 'audio_calling_4'
    get 'message_chat_new'
    get 'message_chat' 
    get 'dashboard'
    get 'dashboard_simple'
    get 'dashboard_schedule_popup'
  end
end
end
