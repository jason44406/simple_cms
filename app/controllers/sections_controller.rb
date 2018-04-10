class SectionsController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in
  before_action :find_page, :except => [:index]
  before_action :find_page_subject, :except => [:index, :destroy]
  before_action :find_pages, :only => [:new, :create, :edit, :update]
  before_action :set_section_count, :only => [:new, :create, :edit, :update]
  before_action :build_audit_message, :only => [:destroy]
  after_action :build_audit_message, :only => [:create, :update]

  def index
    @sections = Section.sorted
  end

  def index_by_page
    @sections = @page.sections.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new(:page_id => @page.id)
    @section_count = Section.count + 1
    @pages = Page.sorted
  end

  def create
    @section = Section.new(section_params)
    @section.page_id = @page.id
    if @section.save
      flash[:notice] = "Section '#{@section.name}' created successfully!"
      redirect_to(index_by_page_sections_path(:page_id => @page.id))
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
      redirect_to(section_path(@section, :page_id => @page.id))
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
    binging.pry
    if @section.destroy
      flash[:notice] = "Section '#{@section.name}' deleted successfully!"
      binding.pry
      redirect_to(sections_path(:page_id => @page.id))
    else
      flash[:error] = "Section not deleted!"
      render('delete')
    end
  end

  private

  def section_params
    params.required(:section).permit(:name, :position, :visible, :content_type, :content)
  end

  def find_page
    binding.pry
    @page = Page.find(params[:page_id]) || {}
  end

  def find_page_subject
    @subject = @page.subject # Subject.find(params[:page_id]) || {}
  end

  def find_pages
    @pages = Page.sorted
  end

  def set_section_count
    @section_count = @page.sections.count
    if params[:action] == 'new' || params[:action] =='create'
      @section_count = Section.count + 1
    end
  end

  def build_audit_message
    @section ||= @section = Section.find(params[:id])
    @section.write_audit_log("#{session[:username]} performed action #{action_name} on #{controller_name} id ##{@section.id}, #{@section.name}")
  end

end
