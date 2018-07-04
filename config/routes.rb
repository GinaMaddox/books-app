Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/books' => 'books#index'
    post '/books' => 'books#create'
    get '/books/:id' => 'books#show'
    patch '/books/:id' => 'books#update'
    delete '/books/:id' => 'books#destroy'
  end
end
