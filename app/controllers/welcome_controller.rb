class WelcomeController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def index
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","spotify","soundcloud","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","steam","discord","website","paypal","bitcoin","ethereum"]
  end
end
