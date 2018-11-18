module UsersHelper

  def upgrade_user(user)
    User.update(user)
    redirect_to url_root
  end
end
