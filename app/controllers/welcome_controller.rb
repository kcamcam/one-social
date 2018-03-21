class WelcomeController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def index
    @socialarray = ["twitter","instagram","youtube","facebook","googleplus","pinterest","snapchat","flickr","messenger","medium","reddit","hackernews","github","keybase","devpost","devto","linkedin","steam","origin","twitch","discord","bitcoin","ethereum","paypal"]
  end
end
