Rails.application.routes.draw do
  root   'contacts#index'
  get    '/contacts'          => 'contacts#index'
  get    '/contacts/new'      => 'contacts#new'
  post   '/contacts'          => 'contacts#create'
  get    '/contacts/:id'      => 'contacts#show'
  get    '/contacts/:id/edit' => 'contacts#edit'
  patch  '/contacts/:id'      => 'contacts#update'
  delete '/contacts'          => 'contacts#destroy'
end
