class Api::V1::ArtistsController < ApplicationController
  
  def show
    artist = Artist.find(params[:id])
    render json:artist 
  end
end
