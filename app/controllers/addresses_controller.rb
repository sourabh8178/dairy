class AddressesController < ApplicationController

  def index
    @addresses = Address.all
  end

  def new
    @addresses = Address.all
    @address = Address.new
    @sub_addresses = SubAddress.all
    @sub_address = SubAddress.new

  end

  def filter 
    if params[:address].present?
      @address = Address.find_by(id: params[:address])
      @sub_address = @address.sub_addresses.find_by(id: params[:sub_addresse]) 
      @products = @sub_address.products rescue nil
      
    else 
      redirect_to addresses_new_path
    end
  end

  def subfilter
    @address = Address.find_by(id: params[:address])
    @subaddress = SubAddress.where(id: params[:address])
    # @sub_address = @address.sub_addresses
    
  end

end
