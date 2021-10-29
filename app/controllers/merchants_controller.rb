class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.first_20_merchants
  end

  def show
    
  end
end
