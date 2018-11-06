Rails.application.routes.draw do
  namespace :api do
    # resources :articles, :except => [:new, :edit]

    get 'articles' => 'articles#index'
    post 'articles' => 'articles#create'

    post 'articles/by_api_ref' => 'articles#by_api_ref'

    get 'articles/:id' => 'articles#show'
    patch "articles/:id" => "articles#update"
    delete "articles/:id" => "articles#destroy"
    
    get 'users' => 'users#index'
    post 'users' => 'users#create'
    get  'users/:id' => 'users#show'
    patch 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

    get 'user_templates' => 'user_templates#index'
    post 'user_templates' => 'user_templates#create'
    get  'user_templates/:id' => 'user_templates#show'
    patch 'user_templates/:id' => 'user_templates#update'
    delete 'user_templates/:id' => 'user_templates#destroy'

  end
end
