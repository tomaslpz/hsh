class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(codigo: params[:session][:codigo])
         if admin
           log_in admin
           redirect_to admin
        else
          flash.now[:danger] = 'Código inválido'
          render 'new'
        end
      end

def destroy
end

end
