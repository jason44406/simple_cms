class PagesController < ApplicationController
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page '#{@page.name}' created successfully!"
      redirect_to(pages_path)
    else
      flash[:error] = "Page not created!"
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Page '#{@page.name}' saved successfully!"
      redirect_to(page_path(@page))
    else
      flash[:error] = "Page not saved!"
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
      redirect_to(pages_path)
    else
      flash[:error] = "Page not deleted!"
      render('delete')
    end
  end

  private

  def page_params
    params.required(:page).permit(:name, :permalink, :position, :visible, :subject_id)
  end

end
