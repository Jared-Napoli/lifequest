class ApplicationController < ActionController::Base
  def hello
    render html: 'Welcome to Lifequest'
  end
end
