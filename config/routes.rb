Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'home#index'



resource :users do
  member do
    get 'audio_call_1'
    get 'audio_call_2'
    get 'audio_calling_1'
    get 'audio_calling_4'
    get 'dashboard_schedule_appointment_success'
    get 'dashboard_simple'
    get 'dashboard'
    get 'editprofile'
    get 'message_chat_new'
    get 'message_chat'
    
  end
end
end
