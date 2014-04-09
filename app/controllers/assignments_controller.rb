class AssignmentsController < ApplicationController

  def create
    @asset = Asset.find(params[:asset_id])
    a = @asset.assignments.new
    params[:assignment].each do |key, value|
      a[key] = value
    end
    if a.save
      redirect_to asset_path(@asset)
    else
      #@assignment_errors = a.errors.full_messages
      #render :partial => 'assignment_form'
      redirect_to asset_path(@asset)
    end

  end

end