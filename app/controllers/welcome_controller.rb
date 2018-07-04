class WelcomeController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def index
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","telegram","soundcloud","spotify","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","steam","xbox","discord","paypal","bitcoin"]
  end
end
