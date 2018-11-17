module SessionsHelper

  def log_in_admin(admin)

    session[:admin_id] = admin.id

  end

  def log_in_user(user)

    session[:user_id] = user.id

  end


  def current_admin
    if session[:admin_id]
      @current_admin ||=
      Admin.find_by(id: session[:admin_id])
    end
  end

  def current_user
    if session[:user_id]
      @current_user ||=
      User.find_by(id: session[:user_id])
    end
  end

  def logged_in_admin?
    !current_admin.nil?
  end

  def logged_in_user?
    !current_user.nil?
  end

  def log_out
      if !:admin_id.nil?
        session.delete(:admin_id)
        @current_admin = nil
      end
    else
        session.delete(:user_id)
        @current_user = nil
      end
      
  end
