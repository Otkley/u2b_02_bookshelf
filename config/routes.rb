Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new'
end
