Rails.application.routes.draw do

  # This is the action for the root route
  root 'demo#index'

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
