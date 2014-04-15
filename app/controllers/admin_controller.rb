class AdminController < ApplicationController

  def index
    @assets = Asset.all
  end

end
