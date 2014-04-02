class AssetTypesController < ApplicationController

  def index
    @all_types = AssetType.all
  end

end