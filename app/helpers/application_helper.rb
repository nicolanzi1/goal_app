module ApplicationHelper
    def auth_token
        html = "<input type=\"hidden\" name=\"authenticity_token\" value=\#{ form_authenticity_token }\"/>"

        html.html_safe
    end

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end
end
