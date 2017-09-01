class SearchController < ApplicationController
  def create
  cedula = params[:search]
  @clients = Client.where("cedula = ? OR nombre LIKE ?", cedula, cedula)
  respond_to do |format|
    format.html {redirect_to root_path}
    format.json { render json: @clients }
    format.js
  end
  end
end
