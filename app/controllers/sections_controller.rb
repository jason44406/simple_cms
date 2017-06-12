class SectionsController < ApplicationController

  layout 'admin'

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
    @section_count = Section.count + 1
    @pages = Page.sorted
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section '#{@section.name}' created successfully!"
      redirect_to(sections_path)
    else
      flash[:error] = "Section not created!"
      @section_count = Section.count + 1
      @pages = Page.sorted
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
    @section_count = Section.count
    @pages = Page.sorted
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "section '#{@section.name}' updated successfully!"
      redirect_to(section_path(@section))
    else
      flash[:error] = "Section not saved!"
      @section_count = Section.count
      @pages = Page.sorted
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    if @section.destroy
      flash[:notice] = "Section '#{@section.name}' deleted successfully!"
      redirect_to(sections_path)
    else
      flash[:error] = "Section not deleted!"
      render('delete')
    end
  end

  private

  def section_params
    params.required(:section).permit(:name, :position, :visible, :content_type, :content, :page_id)
  end

end
