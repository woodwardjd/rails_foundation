class HomeController < ApplicationController

  def index
  end

  def kaboom
    raise RuntimeError, "KABOOM!"
  end

end
