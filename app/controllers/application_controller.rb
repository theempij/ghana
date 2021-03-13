class ApplicationController < ActionController::Base

  def imprint
    @title = 'Imprint'
  end

  def landing_page
  end

  def news
    @title = 'News'
  end

  def donate_now
    @title = 'Donate now!'
  end

  def about_ghana
    @title = "About Ghana"
  end

  def about_me
    @title = "About me"
  end

  def error
    raise "hell"
  end
end
