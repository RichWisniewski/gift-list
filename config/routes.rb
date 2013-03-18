GiftList::Application.routes.draw do
  match '/help', to: "static_pages#help"

  root :to => 'static_pages#home'

end
