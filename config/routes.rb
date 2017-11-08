Rails.application.routes.draw do

  resources :posts, :questions

  get 'about' => 'welcome#about'

  root 'welcome#index'

  get 'welcome/faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
