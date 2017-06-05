Rails.application.routes.draw do

  # This is the action for the root route
  root 'demo#index'

# ~~~> Subjects Routes <~~~
# These routes were provided by default from the rails generate command.
# Using resourceful routes instead.
#  get 'subjects/index'
#  get 'subjects/show'
#  get 'subjects/new'
#  get 'subjects/edit'
#  get 'subjects/delete'

  resources :subjects do

    member do
      get :delete
    end

  end

# ~~~> Pages Routes <~~~~
#  get 'pages/index'
#  get 'pages/show'
#  get 'pages/new'
#  get 'pages/edit'
#  get 'pages/delete'

  resources :pages do

    member do
      get :delete
    end

  end

# ~~~> Section Routes <~~~
#  get 'sections/index'
#  get 'sections/show'
#  get 'sections/new'
#  get 'sections/edit'
#  get 'sections/delete'

resources :sections do

  member do
    get :delete
  end

end


  # simple match routes
  # match "demo/index", :to => "demo#index", :via => :get
  # this is the longer way to write the same.

  # Default route may go away in future versions of Rails.
  # get ':controller(/:action(/:id))'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
