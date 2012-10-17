module SessionsHelper
def sign_in(user)
      #puts "Sign In called"
 cookies.permanent[:remember_token] = user.remember_token
 current_user = user
end

def signed_in?
 #puts "Current User #{current_user}"
 !current_user.nil?
end

def current_user=(user)
 #puts "Setting current user as #{current_user}"
 @current_user = user
end

def current_user
 #puts "Sus User [#{cookies[:remember_token]}]"
      #sus_user = User.find_by_remember_token(cookies[:remember_token])
      #puts "Sus User #{sus_user.name}"
 @current_user ||= User.find_by_remember_token(cookies[:remember_token])
end

def current_user?(user)
      user == current_user
    end

    def sign_out
    #puts "Sign out called"
      current_user = nil
      cookies.delete(:remember_token)
    end

    def store_location
    session[:return_to] = request.url
  end

  def redirect_back_or(default)
  redirect_to(session[:return_to] || default)
  session.delete(:return_to)
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end
end
