class DemoController < ApplicationController

  layout false

  def index
    # This is the default action.
    # same as render('demo/index').  Demo is not needed because this is inside the DemoController
    # same as render(:template => 'demo/hello')
    render('index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render('hello')
  end

  def other_hello
    # specifing the controller is not necessary because this is in the demo controller
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
    # external (outside this application) redirect
    redirect_to('http://lynda.com')
  end

  def escape_output

  end

end
