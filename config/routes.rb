Rails.application.routes.draw do
  root 'home#new'

  post "link_create"  => 'home#create', as: :link_create
end
