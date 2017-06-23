Rails.application.routes.draw do

  # This is the action for the root route
  root 'public#index'

  get 'public/index'
  # rails doesnt know how to make this a route, so you can tell it with as
  get 'show/:permalink', :to => 'public#show', :as => 'public_show'

  # Simple routes since there are no models, DB, etc. for this.
  get 'admin', :to => 'access#menu'
  get 'access/menu'   #index
  get 'access/login'  #new
  post 'access/attempt_login'
  get 'access/logout'


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

# ~~~~> Admin User Routes <~~~~
#  get 'admin_user/index'
#  get 'admin_user/new'
#  get 'admin_user/create'
#  get 'admin_user/edit'
#  get 'admin_user/update'
#  get 'admin_user/delete'
#  get 'admin_user/destroy'

  resources :admin_user, :except => 'show' do

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
  get 'demo/escape_output'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
