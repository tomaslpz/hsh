class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end


  def show
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        flash[:success] = "Bienvenido administrador! "
        redirect_to @admin
      else
        render 'new'
      end
  end

def destroy
end
    private

    def admin_params
      params.require(:admin).permit(:codigo)
    end
end
