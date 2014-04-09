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
    if params[:asset_type_id].present?
      @asset_type = AssetType.find(params[:asset_type_id])
      @assets = Asset.where(:asset_type => @asset_type)
      render 'index'
    else
      @assets = Asset.all
      render 'asset_list'
    end

  end

  def show
    begin
    @asset = Asset.find(params[:id])
    @asset_type = @asset.asset_type
    rescue
      render :status => 404
    end
  end

  def clone
  end

  def destroy
    Asset.find(params[:id]).destroy
    redirect_to assets_path
  end

end