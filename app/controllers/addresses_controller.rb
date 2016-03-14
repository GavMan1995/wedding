class AddressesController < ApplicationController
  def index
    @address = Address.new
  end

  def create
    @address = Address.create(address_params)
    if @address.save
      redirect_to "/home"
    else
      render :index
    end
  end

  private

  def address_params
    params.require(:address).permit(:first_name, :last_name, :street, :city, :state, :zip, :country)
  end
end
