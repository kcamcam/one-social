class WelcomeController < ApplicationController
  def index
    @socialarray = ["twitter", "github", "instagram","youtube","facebook"]
  end
end
