class HomeController < ApplicationController

  before_filter :authenticate_user!
  respond_to :html, :json, :xml

  def index
  	@page_title = current_user.hashtag.name || "#trackrr"
  	@tag = current_user.hashtag
  	@tweets = Twitter.search(@page_title, :lang => 'en', :count => 30).results
  	respond_with(@tweets)
  end

end
