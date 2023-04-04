Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources:books
  # post 'books' => 'books#create'
  # patch 'books/:id' => 'books#update', as: 'update_book'
 root :to => 'homes#top'
end
