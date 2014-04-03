class AssetsController < ApplicationController

  def new
    @asset_type = AssetType.find(params[:asset_type_id])
    @asset = Asset.new(:asset_type => @asset_type)
  end

  def create
    @asset_type = AssetType.find(params[:asset_type_id])
    @asset = Asset.new(:asset_type => @asset_type)
    params[:asset][:properties].each do |key, value|
      @asset[key] = value
    end
    if @asset.save
      redirect_to asset_types_path
    else
      render :new
    end
  end

  def index
    @assets = Asset.all
  end

end