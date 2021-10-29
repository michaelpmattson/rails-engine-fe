class MerchantFacade
  def self.first_20_merchants
    merchants = MerchantService.first_20_merchants

    merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
