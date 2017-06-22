class AdminUserController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in

  def index
    @adminusers = AdminUser.sorted
  end

  def new
    @adminuser = AdminUser.new
  end

  def create
    @adminuser = AdminUser.new(adminuser_params)
    if @adminuser.save
      flash[:notice] = "User '#{@adminuser.name}' created successfully!"
      redirect_to(admin_user_index_path)
    else
      flash[:error] = "User not created!"
      render('new')
    end
  end

  def edit
    @adminuser = AdminUser.find(params[:id])
  end

  def update
    @adminuser = AdminUser.find(params[:id])
    if @adminuser.update_attributes(adminuser_params)
      flash[:notice] = "User '#{@adminuser.name}' updated successfully!"
      redirect_to(admin_user_index_path)
    else
      flash[:error] = "User not saved!"
      render('edit')
    end
  end

  def delete
    @adminuser = AdminUser.find(params[:id])
  end

  def destroy
    @adminuser = AdminUser.find(params[:id])
    if @adminuser.destroy
      flash[:notice] = "User '#{@adminuser.name}' destroyed successfully!"
      redirect_to(admin_user_index_path)
    else
      flash[:error] = "User not destroyed"
      render('delete')
    end
  end

  private

  def adminuser_params
    params.required(:admin_user).permit(:first_name, :last_name, :username, :email, :password)
  end


end
