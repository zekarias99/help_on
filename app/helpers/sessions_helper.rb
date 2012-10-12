module SessionsHelper
<<<<<<< HEAD
	def sign_in(user)
      #puts "Sign In called"		
	  cookies.permanent[:remember_token] = user.remember_token
	  current_user = user
	end
=======
def sign_in(user)
#puts "Sign In called"
 cookies.permanent[:remember_token] = user.remember_token
 self.current_user = user
end
>>>>>>> sign_in_out

<<<<<<< HEAD
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
=======
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
>>>>>>> updating_user

	def current_user?(user)
      user == current_user
    end

    def sign_out
<<<<<<< HEAD
<<<<<<< HEAD
      self.current_user = nil
=======
    #puts "Sign out called"
      current_user = nil
>>>>>>> updating_user
      cookies.delete(:remember_token)	
=======
    #puts "Sign out called"
      self.current_user = nil
      cookies.delete(:remember_token)
>>>>>>> sign_in_out
    end

    def store_location
    session[:return_to] = request.url
  end

  def redirect_back_or(default)
  	redirect_to(session[:return_to] || default)
  	session.delete(:return_to)
  end
end
