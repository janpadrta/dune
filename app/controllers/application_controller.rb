class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :null_session
end
