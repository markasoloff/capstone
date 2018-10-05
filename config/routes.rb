Rails.application.routes.draw do
  namespace :api do
    get 'articles' => 'articles#index'
    # post "meetings" => "meetings#create"
    get 'articles/:id' => 'articles#show'
    # patch "articles/:id" => "articles#update"
    # delete "articles/:id" => "articles#destroy"
    

  end

  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
