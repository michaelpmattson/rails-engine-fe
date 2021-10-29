class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.first_20_merchants
  end

  def show
    @items = ItemsFacade.items_by_merchant_id(params[:id])
  end
end
