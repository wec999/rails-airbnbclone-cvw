class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
        @markers =
      [{
        lat: @flat.latitude,
        lng: @flat.longitude,
      }]
      @address = "1Chain4asCYNnLVbvG6pgCLGBrtzh4Lx4b"
    url = "https://api-r.bitcoinchain.com/v1/address/utxo/#{@address}"
    response = RestClient.get(url)
    @data = JSON.parse(response)
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to flats_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end


  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price, :photo)
  end

end

