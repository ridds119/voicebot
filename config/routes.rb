Rails.application.routes.draw do
  post '/dates', to: 'voximplant#get_call_history'
  root :to => "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
