Rails.application.routes.draw do
  get 'books/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/books' => 'books#index'
  resource :books, only: [:show, :create, :delete]
end
