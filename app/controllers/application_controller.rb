class ApplicationController < ActionController::Base
  after_action { response.body }
end
