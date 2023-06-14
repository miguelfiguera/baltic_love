class ApplicationController < ActionController::Base
   def after_sign_in_path_for(resource)
    admin_authenticated_root_url
end
end
