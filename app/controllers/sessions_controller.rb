class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:session][:email] == ''
      admin = Admin.find_by(codigo: params[:session][:password])
         if admin
           log_in_admin admin
           redirect_to admin
        else
          flash.now[:danger] = 'Código inválido'
          render 'new'
        end
      else
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          log_in_user user
          redirect_to user

        else
              flash.now[:danger] = 'Invalid email/password combination'
              render 'new'
            end
          end
      end


        def destroy
          log_out
          redirect_to root_url
        end

end
