module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path) +
      "<br>".html_safe +
      (link_to "Register", new_user_registration_path)
    end
  end
  ##  LOL ROFL LOL  ##
  # def login_helper_solution_1
  #   if current_user.is_a?(User)
  #     out = capture { link_to "Logout", destroy_user_session_path, method: :delete }
  #   else
  #     out = capture { link_to "Login", new_user_session_path }
  #     out << capture { link_to "Register", new_user_registration_path }
  #   end
  #   return out
  # end

  # def login_helper_solution_2
  #   if current_user.is_a?(User)
  #     out = safe_join( [ raw( link_to "Logout", destroy_user_session_path, method: :delete ) ] )
  #   else
  #     out = safe_join( [
  #     raw(link_to "Login", new_user_session_path),
  #     raw(link_to "Register", new_user_registration_path)
  #     ] )
  #   end
  #   return out
  # end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{ layout_name } Layout"
      content_tag(:p, greeting, class: "source_greeting")
    end
  end
end