GiftList::Application.routes.draw do
  resources :lists

  match '/help', to: "static_pages#help"

  root :to => 'static_pages#home'

end
