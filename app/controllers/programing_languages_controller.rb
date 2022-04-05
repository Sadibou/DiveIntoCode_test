 class ProgramingLanguagesController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: "dive", password: "code"

  def index
  
    @languages = Language.all
    render json: @languages
   
  end
end
