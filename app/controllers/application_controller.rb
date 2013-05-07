require 'espn_rb'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @espn = EspnRb.headlines(:api_key => ENV["ESPN_API_KEY"])
    render :index
  end

end
