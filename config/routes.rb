Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
     authenticated :user do
       root 'links#index', as: :authenticated_root
     end

     unauthenticated do
       root 'devise/registrations#new', as: :unauthenticated_root
     end
  end

  get '/links' => 'links#index'
  get '/links/new' => 'links#new'
  post '/links' => 'links#create'
  get '/links/:id' => 'links#show'
  get '/links/:id/edit' => 'links#edit'
  patch '/links/:id' => 'links#update'
  delete '/links/:id' => 'links#destroy'
  get '/users/sign_out' => 'users#destroy'

  get '/:slug' => 'visits#create'
  
end
