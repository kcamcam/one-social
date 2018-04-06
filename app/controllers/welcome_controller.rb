class WelcomeController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def index
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","wire","messenger","pinterest","flickr","tumblr","medium","reddit","hackernews","github","keybase","twitch","steam","origin","discord","bitcoin","ethereum","paypal"]
  end
end
