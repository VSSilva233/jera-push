module JeraPush
  class Admin::AdminController < JeraPush::JeraPushController

    before_filter :authenticate

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
    		username == JeraPush.admin_login[:username] && password == JeraPush.admin_login[:password]
    	end
    end

  end
end
