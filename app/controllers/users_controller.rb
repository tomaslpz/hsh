class UsersController < ApplicationController

	before_action :check_login, only: [:index, :show, :edit, :update, :destroy]

	def index
		@users = User.joins(:user_configs).order(esPremium: :desc).merge(UserConfigs.order(esPremium: :asc))
	end

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
		if !(logged_in_admin? || (logged_in_user? && current_user.id == @user.id))
			redirect_to '/'
		end
    end

	def create
		@user = User.new(user_params)
		@user_configs = UserConfigs.new
		@user_configs.esPremium = false
		@user_configs.creditos = 2
		@user_configs.save
		@user.user_configs_id = @user_configs.id;
		if @user.save
			@user_configs.user_id = @user.id
			@user_configs.save
			log_in_user @user
			redirect_to @user
		else
			render 'new'
        end
    end

	def solicitar_premium
		if (logged_in_user? && current_user.id == params[:id])
			@user = User.find(params[:id])
			@user.esPremium = true
			if @user.save
				redirect_to @user
			end
		else
			redirect_to '/'
		end
	end

	def autorizar_premium
		if !logged_in_admin?
			redirect_to '/'
		else
			@user = User.find(params[:id])
			@user.user_configs.esPremium = true;
			@user.user_configs.fechaPremium = Date.today;
			if @user.user_configs.save
				redirect_to @user
			end
		end
	end

    def user_params
        params.require(:user).permit(:numTarjeta, :codTarjeta, :name, :email, :password,
                                      :password_confirmation, :birth_date, :esPremium)
	end
	
	private

	def check_login
		unless logged_in_user? || logged_in_admin?
			flash[:danger] = "Please log in."
			redirect_to login_url
		end
	end

end
