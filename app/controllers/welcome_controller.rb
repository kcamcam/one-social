class WelcomeController < ApplicationController
  def index
    @socialarray = ["twitter","instagram","youtube","facebook","googleplus","pinterest","snapchat","flickr","messenger","medium","reddit","hackernews","github","keybase","devpost","devto","angel","linkedin","steam","origin","twitch","discord","bitcoin","ethereum"]
  end
end
