class OfficesController < ApplicationController

  def create
    @office = Office.new()
    @office.country = Country[params["office"]["country"]].name
    @office.name = Country[params["office"]["name"]]
    respond_to do |format|
      format.js {require 'pry'; binding.pry}
      format.html {require 'pry'; binding.pry}
    end
  end

end