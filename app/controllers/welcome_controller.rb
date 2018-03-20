class WelcomeController < ApplicationController
  def index
    @socialarray = ["twitter", "github", "instagram","youtube","facebook","pinterest","steam","bitcoin","ethereum"]
  end
end
