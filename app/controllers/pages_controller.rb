class PagesController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in
  before_action :find_subject, :except => :index
#  before_action :find_subjects, :only => [:new, :create, :edit, :update]
  before_action :set_page_count, :only => [:new, :create, :edit, :update]

  def index
    @pages = Page.sorted
  end

  def index_by_subject
    @pages = @subject.pages.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new(:subject_id => @subject.id)
  #  @page_count = Page.count + 1
  #  @subjects = Subject.sorted
  end

  def create
    @page = Page.new(page_params)
    @page.subject_id = @subject.id
    if @page.save
      flash[:notice] = "Page '#{@page.name}' created successfully!"
      redirect_to(index_by_subject_pages_path(:subject_id => @subject.id))
    else
      flash[:error] = "Page not created!"
  #    @page_count = Page.count + 1
  #    @subjects = Subject.sorted
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  #  @page_count = Page.count
  #  @subjects = Subject.sorted
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page '#{@page.name}' updated successfully!"
      redirect_to(page_path(@page, :subject_id => @subject.id))
    else
      flash[:error] = "Page not saved!"
    #  @page_count = Page.count
    #  @subjects = Subject.sorted
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    if @page.destroy
      flash[:notice] = "Page '#{@page.name}' deleted successfully!"
      redirect_to(pages_path(:subject_id => @subject.id))
    else
      flash[:error] = "Page not deleted!"
      render('delete')
    end
  end

  private

  def page_params
    params.required(:page).permit(:name, :permalink, :position, :visible)
  end

  def find_subject
    @subject = Subject.find(params[:subject_id]) || {}
  end

#  def find_subjects
#    @subjects = Subject.sorted
#  end

  def set_page_count
    # Here we are conditioning the page count based on the action called.  :action is a param availible to us for this use.
    @page_count = @subject.pages.count
    if params[:action] == 'new' || params[:action] =='create'
      @page_count = Page.count + 1
    end
  end

end
