class WelcomeController < ApplicationController
  def help
  end

  def about
  end

  def contact
  end

  def index
    #all @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","telegram","soundcloud","spotify","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","xbox","steam","discord","paypal","bitcoin","ethereum","email","website"]
    @socialarray = ["instagram","twitter","youtube","facebook","googleplus","linkedin","snapchat","messenger","wire","telegram","soundcloud","spotify","pinterest","flickr","tumblr","reddit","medium","hackernews","github","keybase","devto","devpost","angel","twitch","origin","steam","xbox","discord","paypal","bitcoin"]
  end
end
