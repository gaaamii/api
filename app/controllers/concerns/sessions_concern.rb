module SessionsConcern
  ADMIN_USER_EMAIL = ENV["ADMIN_USER_EMAIL"]

  private

  def admin?
    current_user && current_user.email == ADMIN_USER_EMAIL 
  end

  def require_admin_login
    head :unauthorized unless admin?
  end
end