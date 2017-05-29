class PagesController < ApplicationController
  def index
  end

  def about
  end

  def about_our_name
  end

  def contact
    @message = Message.new
  end

  def privacy
  end
end
