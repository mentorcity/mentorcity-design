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
    get 'access_connection'
    get 'audio_call_group'
    get 'awards_achivements'
    get 'courses'
    get 'dashboard_admin_account'
    get 'discussion'
    get 'discussion_thread'
    get 'discussion_thread_second'
    get 'groups'
    get 'event_read_more'
    get 'helpline_1'
    get 'helpline_2'
    get 'members_list'
  end
end
end
