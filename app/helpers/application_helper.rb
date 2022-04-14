module ApplicationHelper
    before_action :user_signed_in?, :current_user, :user_session
end
