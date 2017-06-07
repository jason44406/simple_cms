class SubjectsController < ApplicationController

  layout 'admin'

  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => 'Default'})
  end

  def create
    # Instantiate a new object using form params
    @subject = Subject.new(subject_params)
    # Save the object
    if @subject.save
      # If save succeeds, redirect to the index action.
      # save always returns true or false.
      flash[:notice] = "Subject '#{@subject.name}' created successfully!"
      redirect_to(subjects_path)
    else
      # If the save fails, redisplay the form so the user can correct
      # Render just renders the template with fields populated.
      flash[:error] = "Subject not created!"
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    # find an object using form params
    @subject = Subject.find(params[:id])
    # Save the object
    if @subject.update_attributes(subject_params)
      # If save succeeds, redirect to the show action.
      # save always returns true or false.
      flash[:notice] = "Subject '#{@subject.name}' updated successfully!"
      redirect_to(subject_path(@subject))
    else
      # If the save fails, redisplay the form so the user can correct
      # Render just renders the template with fields populated.
      flash[:error] = "Subject not saved!"
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    if @subject.destroy
      flash[:notice] = "Subject '#{@subject.name}' destroyed successfully!"
      redirect_to(subjects_path)
    else
      flash[:error] = "Subject not deleted!"
      render('delete')
    end
  end

  private

  def subject_params
    params.required(:subject).permit(:name, :position, :visible)
  end

end
