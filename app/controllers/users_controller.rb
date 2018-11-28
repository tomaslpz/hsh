class UsersController < ApplicationController


  def new
      @user = User.new
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
          redirect_to @user
        else
          render 'edit'
        end
      end

      def edit
        @user = User.find(params[:id])
      end

  def show
      @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
          log_in_user @user
          redirect_to @user
        else
          render 'new'
        end
      end


      def user_params
         params.require(:user).permit(:numTarjeta, :codTarjeta, :name, :email, :password,
                                      :password_confirmation, :birth_date, :esPremium)
       end
end
